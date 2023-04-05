package com.afwsamples.testdpc.policy;
final synthetic class FactoryResetProtectionPolicyFragment$$Lambda$0 implements android.content.DialogInterface$OnShowListener {
    private final com.afwsamples.testdpc.policy.FactoryResetProtectionPolicyFragment arg$1;
    private final android.app.AlertDialog arg$2;
    private final android.widget.EditText arg$3;

    FactoryResetProtectionPolicyFragment$$Lambda$0(com.afwsamples.testdpc.policy.FactoryResetProtectionPolicyFragment p1, android.app.AlertDialog p2, android.widget.EditText p3)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        this.arg$3 = p3;
        return;
    }

    public void onShow(android.content.DialogInterface p4)
    {
        this.arg$1.lambda$createAddAccountDialog$191$FactoryResetProtectionPolicyFragment(this.arg$2, this.arg$3, p4);
        return;
    }
}
