package com.afwsamples.testdpc.policy.networking;
 class NetworkUsageStatsFragment$3 implements android.app.DatePickerDialog$OnDateSetListener {
    final synthetic com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment this$0;
    final synthetic java.util.Calendar val$calendar;
    final synthetic java.util.Date val$target;

    NetworkUsageStatsFragment$3(com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment p1, java.util.Calendar p2, java.util.Date p3)
    {
        this.this$0 = p1;
        this.val$calendar = p2;
        this.val$target = p3;
        return;
    }

    public void onDateSet(android.widget.DatePicker p5, int p6, int p7, int p8)
    {
        this.val$calendar.set(1, p6);
        this.val$calendar.set(2, p7);
        this.val$calendar.set(5, p8);
        this.val$target.setTime(this.val$calendar.getTimeInMillis());
        com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment.access$400(this.this$0);
        return;
    }
}
