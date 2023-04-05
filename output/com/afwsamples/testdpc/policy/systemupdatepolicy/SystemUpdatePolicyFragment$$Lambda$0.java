package com.afwsamples.testdpc.policy.systemupdatepolicy;
final synthetic class SystemUpdatePolicyFragment$$Lambda$0 implements android.app.TimePickerDialog$OnTimeSetListener {
    private final com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment arg$1;
    private final boolean arg$2;

    SystemUpdatePolicyFragment$$Lambda$0(com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment p1, boolean p2)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        return;
    }

    public void onTimeSet(android.widget.TimePicker p3, int p4, int p5)
    {
        this.arg$1.lambda$selectTime$183$SystemUpdatePolicyFragment(this.arg$2, p3, p4, p5);
        return;
    }
}
