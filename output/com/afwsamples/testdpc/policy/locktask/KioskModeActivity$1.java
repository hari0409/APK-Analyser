package com.afwsamples.testdpc.policy.locktask;
 class KioskModeActivity$1 implements android.widget.AdapterView$OnItemClickListener {
    final synthetic com.afwsamples.testdpc.policy.locktask.KioskModeActivity this$0;
    final synthetic com.afwsamples.testdpc.policy.locktask.KioskModeActivity$KioskAppsArrayAdapter val$kioskAppsArrayAdapter;

    KioskModeActivity$1(com.afwsamples.testdpc.policy.locktask.KioskModeActivity p1, com.afwsamples.testdpc.policy.locktask.KioskModeActivity$KioskAppsArrayAdapter p2)
    {
        this.this$0 = p1;
        this.val$kioskAppsArrayAdapter = p2;
        return;
    }

    public void onItemClick(android.widget.AdapterView p7, android.view.View p8, int p9, long p10)
    {
        this.val$kioskAppsArrayAdapter.onItemClick(p7, p8, p9, p10);
        return;
    }
}
