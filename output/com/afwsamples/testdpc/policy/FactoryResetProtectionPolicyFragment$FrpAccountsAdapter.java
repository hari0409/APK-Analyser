package com.afwsamples.testdpc.policy;
 class FactoryResetProtectionPolicyFragment$FrpAccountsAdapter extends android.widget.ArrayAdapter {
    final synthetic com.afwsamples.testdpc.policy.FactoryResetProtectionPolicyFragment this$0;

    public FactoryResetProtectionPolicyFragment$FrpAccountsAdapter(com.afwsamples.testdpc.policy.FactoryResetProtectionPolicyFragment p4)
    {
        this.this$0 = p4;
        super(p4.getActivity(), 2131427382, com.afwsamples.testdpc.policy.FactoryResetProtectionPolicyFragment.access$000(p4));
        return;
    }

    public android.view.View getView(int p6, android.view.View p7, android.view.ViewGroup p8)
    {
        if (p7 == null) {
            p7 = this.this$0.getActivity().getLayoutInflater().inflate(2131427382, p8, 0);
        }
        ((android.widget.TextView) p7.findViewById(2131296443)).setText(((CharSequence) com.afwsamples.testdpc.policy.FactoryResetProtectionPolicyFragment.access$000(this.this$0).get(p6)));
        ((android.widget.Button) p7.findViewById(2131296568)).setOnClickListener(new com.afwsamples.testdpc.policy.FactoryResetProtectionPolicyFragment$FrpAccountsAdapter$$Lambda$0(this, p6));
        return p7;
    }

    final synthetic void lambda$getView$189$FactoryResetProtectionPolicyFragment$FrpAccountsAdapter(int p2, android.view.View p3)
    {
        com.afwsamples.testdpc.policy.FactoryResetProtectionPolicyFragment.access$000(this.this$0).remove(p2);
        this.notifyDataSetChanged();
        return;
    }
}
