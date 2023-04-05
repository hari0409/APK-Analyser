package com.afwsamples.testdpc.policy.systemupdatepolicy;
 class SystemUpdatePolicyFragment$FreezePeriodAdapter extends android.widget.ArrayAdapter {
    public java.util.ArrayList mData;
    final synthetic com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment this$0;

    public SystemUpdatePolicyFragment$FreezePeriodAdapter(com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment p2, android.content.Context p3, java.util.ArrayList p4)
    {
        this.this$0 = p2;
        super(p3, 0, p4);
        super.mData = p4;
        return;
    }

    public android.view.View getView(int p7, android.view.View p8, android.view.ViewGroup p9)
    {
        com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$Period v0_1 = ((com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$Period) this.getItem(p7));
        if (p8 == null) {
            p8 = android.view.LayoutInflater.from(this.getContext()).inflate(2131427385, p9, 0);
        }
        android.widget.Button v2_1 = ((android.widget.Button) p8.findViewById(2131296645));
        v2_1.setText(v0_1.toString());
        v2_1.setTag(this.mData.get(p7));
        v2_1.setOnClickListener(new com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$FreezePeriodAdapter$$Lambda$0(this));
        android.view.View v1 = p8.findViewById(2131296400);
        v1.setTag(this.mData.get(p7));
        v1.setOnClickListener(new com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$FreezePeriodAdapter$$Lambda$1(this));
        return p8;
    }

    final synthetic void lambda$getView$181$SystemUpdatePolicyFragment$FreezePeriodAdapter(android.view.View p6)
    {
        com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$Period v0_1 = ((com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$Period) p6.getTag());
        com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment.access$000(this.this$0, new com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$FreezePeriodAdapter$$Lambda$2(this, v0_1), v0_1.getStartDate(), v0_1.getEndDate());
        return;
    }

    final synthetic void lambda$getView$182$SystemUpdatePolicyFragment$FreezePeriodAdapter(android.view.View p3)
    {
        this.mData.remove(((com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$Period) p3.getTag()));
        this.notifyDataSetChanged();
        return;
    }

    final synthetic void lambda$null$180$SystemUpdatePolicyFragment$FreezePeriodAdapter(com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$Period p2, java.time.LocalDate p3, java.time.LocalDate p4)
    {
        p2.set(p3, p4);
        com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment.access$100(this.this$0).notifyDataSetChanged();
        return;
    }
}
