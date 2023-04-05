package com.afwsamples.testdpc.policy.keyguard;
final synthetic class LockScreenPolicyFragment$$Lambda$4 implements com.afwsamples.testdpc.common.preference.CustomConstraint {
    private final com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment arg$1;
    private final String arg$2;

    LockScreenPolicyFragment$$Lambda$4(com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment p1, String p2)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        return;
    }

    public int validateConstraint()
    {
        return this.arg$1.lambda$setup$204$LockScreenPolicyFragment(this.arg$2);
    }
}
