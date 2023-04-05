package com.afwsamples.testdpc.policy.networking;
 class NetworkUsageStatsFragment$1 extends android.widget.ArrayAdapter {
    final synthetic com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment this$0;
    final synthetic android.view.LayoutInflater val$inflater;

    NetworkUsageStatsFragment$1(com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment p1, android.content.Context p2, int p3, int p4, java.util.List p5, android.view.LayoutInflater p6)
    {
        this.this$0 = p1;
        this.val$inflater = p6;
        super(p2, p3, p4, p5);
        return;
    }

    public android.view.View getView(int p10, android.view.View p11, android.view.ViewGroup p12)
    {
        android.view.View v0 = p11;
        if (p11 == null) {
            v0 = this.val$inflater.inflate(2131427374, p12, 0);
            v0.setTag(new com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment$ViewHolder(((android.widget.TextView) v0.findViewById(16908310)), ((android.widget.TextView) v0.findViewById(16908304)), ((android.widget.TextView) v0.findViewById(2131296640)), ((android.widget.ImageView) v0.findViewById(16908294))));
        }
        com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment.access$000(this.this$0, v0, ((java.util.List) this.getItem(p10)));
        return v0;
    }
}
