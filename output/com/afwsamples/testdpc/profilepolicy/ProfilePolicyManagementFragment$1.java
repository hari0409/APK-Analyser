package com.afwsamples.testdpc.profilepolicy;
 class ProfilePolicyManagementFragment$1 implements android.content.DialogInterface$OnClickListener {
    final synthetic com.afwsamples.testdpc.profilepolicy.ProfilePolicyManagementFragment this$0;
    final synthetic java.util.List val$disabledCrossProfileWidgetProvidersList;

    ProfilePolicyManagementFragment$1(com.afwsamples.testdpc.profilepolicy.ProfilePolicyManagementFragment p1, java.util.List p2)
    {
        this.this$0 = p1;
        this.val$disabledCrossProfileWidgetProvidersList = p2;
        return;
    }

    public void onClick(android.content.DialogInterface p7, int p8)
    {
        String v0_1 = ((String) this.val$disabledCrossProfileWidgetProvidersList.get(p8));
        com.afwsamples.testdpc.profilepolicy.ProfilePolicyManagementFragment.access$100(this.this$0).addCrossProfileWidgetProvider(com.afwsamples.testdpc.profilepolicy.ProfilePolicyManagementFragment.access$000(this.this$0), v0_1);
        com.afwsamples.testdpc.profilepolicy.ProfilePolicyManagementFragment v1_1 = this.this$0;
        String v2_0 = this.this$0;
        Object[] v4_1 = new Object[1];
        v4_1[0] = v0_1;
        com.afwsamples.testdpc.profilepolicy.ProfilePolicyManagementFragment.access$200(v1_1, v2_0.getString(2131689664, v4_1));
        p7.dismiss();
        return;
    }
}
