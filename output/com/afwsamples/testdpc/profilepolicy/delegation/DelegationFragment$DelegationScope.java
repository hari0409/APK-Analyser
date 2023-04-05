package com.afwsamples.testdpc.profilepolicy.delegation;
 class DelegationFragment$DelegationScope {
    boolean granted;
    final String scope;

    DelegationFragment$DelegationScope(String p2)
    {
        this.scope = p2;
        this.granted = 0;
        return;
    }

    static java.util.List defaultDelegationScopes(boolean p5)
    {
        java.util.ArrayList v0_1 = new java.util.ArrayList();
        v0_1.add(new com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment$DelegationScope("delegation-cert-install"));
        v0_1.add(new com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment$DelegationScope("delegation-app-restrictions"));
        v0_1.add(new com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment$DelegationScope("delegation-block-uninstall"));
        v0_1.add(new com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment$DelegationScope("delegation-permission-grant"));
        v0_1.add(new com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment$DelegationScope("delegation-package-access"));
        v0_1.add(new com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment$DelegationScope("delegation-enable-system-app"));
        v0_1.add(new com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment$DelegationScope("delegation-cert-selection"));
        try {
            v0_1.add(new com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment$DelegationScope(com.afwsamples.testdpc.common.ReflectionUtil.stringConstant(android.app.admin.DevicePolicyManager, "DELEGATION_SECURITY_LOGGING")));
        } catch (com.afwsamples.testdpc.common.ReflectionUtil$ReflectionIsTemporaryException v1) {
            android.util.Log.w(com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment.access$000(), "Failed to read DevicePolicyManager.DELEGATION_SECURITY_LOGGING", v1);
        }
        if (p5) {
            v0_1.add(new com.afwsamples.testdpc.profilepolicy.delegation.DelegationFragment$DelegationScope("delegation-network-logging"));
        }
        return v0_1;
    }
}
