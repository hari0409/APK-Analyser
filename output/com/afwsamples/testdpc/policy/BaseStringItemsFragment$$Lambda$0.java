package com.afwsamples.testdpc.policy;
final synthetic class BaseStringItemsFragment$$Lambda$0 implements android.content.DialogInterface$OnShowListener {
    private final com.afwsamples.testdpc.policy.BaseStringItemsFragment arg$1;
    private final android.app.AlertDialog arg$2;
    private final android.widget.EditText arg$3;
    private final String arg$4;

    BaseStringItemsFragment$$Lambda$0(com.afwsamples.testdpc.policy.BaseStringItemsFragment p1, android.app.AlertDialog p2, android.widget.EditText p3, String p4)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        this.arg$3 = p3;
        this.arg$4 = p4;
        return;
    }

    public void onShow(android.content.DialogInterface p5)
    {
        this.arg$1.lambda$onEditButtonClick$178$BaseStringItemsFragment(this.arg$2, this.arg$3, this.arg$4, p5);
        return;
    }
}
