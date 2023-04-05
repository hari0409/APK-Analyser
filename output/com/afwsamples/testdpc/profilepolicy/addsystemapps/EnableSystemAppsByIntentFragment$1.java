package com.afwsamples.testdpc.profilepolicy.addsystemapps;
 class EnableSystemAppsByIntentFragment$1 implements android.content.DialogInterface$OnCancelListener {
    final synthetic com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment this$0;

    EnableSystemAppsByIntentFragment$1(com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment p1)
    {
        this.this$0 = p1;
        return;
    }

    public void onCancel(android.content.DialogInterface p3)
    {
        com.afwsamples.testdpc.profilepolicy.addsystemapps.EnableSystemAppsByIntentFragment.access$000(this.this$0).setSelection(0);
        p3.dismiss();
        return;
    }
}
