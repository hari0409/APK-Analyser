package com.afwsamples.testdpc.search;
public class IndexableFragments {
    private static final java.util.List sIndexableFragments;

    static IndexableFragments()
    {
        com.afwsamples.testdpc.search.IndexableFragments.sIndexableFragments = new java.util.ArrayList();
        com.afwsamples.testdpc.search.IndexableFragments.sIndexableFragments.add(new com.afwsamples.testdpc.search.XmlIndexableFragment(com.afwsamples.testdpc.policy.PolicyManagementFragment, 2131886083));
        com.afwsamples.testdpc.search.IndexableFragments.sIndexableFragments.add(new com.afwsamples.testdpc.search.XmlIndexableFragment(com.afwsamples.testdpc.profilepolicy.ProfilePolicyManagementFragment, 2131886089));
        com.afwsamples.testdpc.search.IndexableFragments.sIndexableFragments.add(new com.afwsamples.testdpc.search.XmlIndexableFragment(com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment, 2131886085));
        com.afwsamples.testdpc.search.IndexableFragments.sIndexableFragments.add(new com.afwsamples.testdpc.search.XmlIndexableFragment(com.afwsamples.testdpc.policy.keyguard.PasswordConstraintsFragment, 2131886088));
        com.afwsamples.testdpc.search.IndexableFragments.sIndexableFragments.add(new com.afwsamples.testdpc.search.XmlIndexableFragment(com.afwsamples.testdpc.comp.BindDeviceAdminFragment, 2131886080));
        com.afwsamples.testdpc.search.IndexableFragments.sIndexableFragments.add(new com.afwsamples.testdpc.search.UserRestrictionIndexableFragment());
        com.afwsamples.testdpc.search.IndexableFragments.sIndexableFragments.add(new com.afwsamples.testdpc.search.XmlIndexableFragment(com.afwsamples.testdpc.policy.OverrideApnFragment, 2131886087));
        return;
    }

    public IndexableFragments()
    {
        return;
    }

    public static java.util.List values()
    {
        return new java.util.ArrayList(com.afwsamples.testdpc.search.IndexableFragments.sIndexableFragments);
    }
}
