package com.afwsamples.testdpc.policy;
final synthetic class PolicyManagementFragment$$Lambda$44 implements android.content.DialogInterface$OnClickListener {
    private final com.afwsamples.testdpc.policy.PolicyManagementFragment arg$1;
    private final android.widget.EditText arg$2;
    private final android.widget.EditText arg$3;

    PolicyManagementFragment$$Lambda$44(com.afwsamples.testdpc.policy.PolicyManagementFragment p1, android.widget.EditText p2, android.widget.EditText p3)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        this.arg$3 = p3;
        return;
    }

    public void onClick(android.content.DialogInterface p4, int p5)
    {
        this.arg$1.lambda$showSetGlobalHttpProxyDialog$146$PolicyManagementFragment(this.arg$2, this.arg$3, p4, p5);
        return;
    }
}
