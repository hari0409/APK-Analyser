package com.afwsamples.testdpc.policy.systemupdatepolicy;
final synthetic class SystemUpdatePolicyFragment$$Lambda$4 implements com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$DatePickResult {
    private final com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$FreezePeriodPickResult arg$1;
    private final java.time.LocalDate arg$2;

    SystemUpdatePolicyFragment$$Lambda$4(com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$FreezePeriodPickResult p1, java.time.LocalDate p2)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        return;
    }

    public void onResult(java.time.LocalDate p3)
    {
        com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment.lambda$null$186$SystemUpdatePolicyFragment(this.arg$1, this.arg$2, p3);
        return;
    }
}
