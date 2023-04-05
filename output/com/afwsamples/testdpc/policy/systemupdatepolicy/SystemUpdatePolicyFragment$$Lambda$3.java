package com.afwsamples.testdpc.policy.systemupdatepolicy;
final synthetic class SystemUpdatePolicyFragment$$Lambda$3 implements com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$DatePickResult {
    private final com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment arg$1;
    private final java.time.LocalDate arg$2;
    private final com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$FreezePeriodPickResult arg$3;

    SystemUpdatePolicyFragment$$Lambda$3(com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment p1, java.time.LocalDate p2, com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$FreezePeriodPickResult p3)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        this.arg$3 = p3;
        return;
    }

    public void onResult(java.time.LocalDate p4)
    {
        this.arg$1.lambda$promptToSetFreezePeriod$187$SystemUpdatePolicyFragment(this.arg$2, this.arg$3, p4);
        return;
    }
}
