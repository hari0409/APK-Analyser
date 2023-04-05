package com.afwsamples.testdpc.policy;
public class ManageAffiliationIdsFragment extends com.afwsamples.testdpc.policy.BaseStringItemsFragment {
    private com.afwsamples.testdpc.DevicePolicyManagerGateway mDevicePolicyManagerGateway;

    public ManageAffiliationIdsFragment()
    {
        super(2131689918, 2131689797, 2131689535);
        return;
    }

    protected java.util.Collection loadItems()
    {
        return this.mDevicePolicyManagerGateway.getAffiliationIds();
    }

    public void onCreate(android.os.Bundle p3)
    {
        super.onCreate(p3);
        this.mDevicePolicyManagerGateway = new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl(this.getActivity());
        return;
    }

    protected void saveItems(java.util.List p3)
    {
        this.mDevicePolicyManagerGateway.setAffiliationIds(new androidx.collection.ArraySet(p3));
        return;
    }
}
