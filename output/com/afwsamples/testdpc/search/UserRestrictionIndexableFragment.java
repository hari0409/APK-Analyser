package com.afwsamples.testdpc.search;
public class UserRestrictionIndexableFragment extends com.afwsamples.testdpc.search.BaseIndexableFragment {

    public UserRestrictionIndexableFragment()
    {
        super(com.afwsamples.testdpc.policy.UserRestrictionsDisplayFragment);
        return;
    }

    public java.util.List index(android.content.Context p10)
    {
        java.util.ArrayList v0_1 = new java.util.ArrayList();
        com.afwsamples.testdpc.policy.UserRestriction[] v3 = com.afwsamples.testdpc.policy.UserRestriction.ALL_USER_RESTRICTIONS;
        int v4 = v3.length;
        int v2 = 0;
        while (v2 < v4) {
            com.afwsamples.testdpc.policy.UserRestriction v1 = v3[v2];
            v0_1.add(new com.afwsamples.testdpc.search.PreferenceIndex(v1.key, p10.getString(v1.titleResId), this.fragmentName));
            v2++;
        }
        return v0_1;
    }
}
