package com.afwsamples.testdpc.policy.systemupdatepolicy;
final synthetic class SystemUpdatePolicyFragment$FreezePeriodAdapter$$Lambda$2 implements com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$FreezePeriodPickResult {
    private final com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$FreezePeriodAdapter arg$1;
    private final com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$Period arg$2;

    SystemUpdatePolicyFragment$FreezePeriodAdapter$$Lambda$2(com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$FreezePeriodAdapter p1, com.afwsamples.testdpc.policy.systemupdatepolicy.SystemUpdatePolicyFragment$Period p2)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        return;
    }

    public void onResult(java.time.LocalDate p3, java.time.LocalDate p4)
    {
        this.arg$1.lambda$null$180$SystemUpdatePolicyFragment$FreezePeriodAdapter(this.arg$2, p3, p4);
        return;
    }
}
