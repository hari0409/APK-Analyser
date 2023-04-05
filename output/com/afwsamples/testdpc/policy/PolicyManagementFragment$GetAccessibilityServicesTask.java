package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$GetAccessibilityServicesTask extends com.afwsamples.testdpc.policy.GetAvailableComponentsTask {
    private android.view.accessibility.AccessibilityManager mAccessibilityManager;
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;

    public PolicyManagementFragment$GetAccessibilityServicesTask(com.afwsamples.testdpc.policy.PolicyManagementFragment p3)
    {
        this.this$0 = p3;
        super(p3.getActivity(), 2131690189);
        super.mAccessibilityManager = ((android.view.accessibility.AccessibilityManager) p3.getActivity().getSystemService("accessibility"));
        return;
    }

    protected bridge synthetic Object doInBackground(Object[] p2)
    {
        return this.doInBackground(((Void[]) p2));
    }

    protected varargs java.util.List doInBackground(Void[] p2)
    {
        return this.mAccessibilityManager.getInstalledAccessibilityServiceList();
    }

    protected java.util.List getPermittedComponentsList()
    {
        return com.afwsamples.testdpc.policy.PolicyManagementFragment.access$400(this.this$0).getPermittedAccessibilityServices(com.afwsamples.testdpc.policy.PolicyManagementFragment.access$700(this.this$0));
    }

    protected java.util.List getResolveInfoListFromAvailableComponents(java.util.List p7)
    {
        java.util.HashSet v1_1 = new java.util.HashSet();
        java.util.ArrayList v3_1 = new java.util.ArrayList();
        java.util.Iterator v4 = p7.iterator();
        while (v4.hasNext()) {
            android.content.pm.ResolveInfo v2 = ((android.accessibilityservice.AccessibilityServiceInfo) v4.next()).getResolveInfo();
            if (!v1_1.contains(v2.serviceInfo.packageName)) {
                v3_1.add(v2);
                v1_1.add(v2.serviceInfo.packageName);
            }
        }
        return v3_1;
    }

    protected void setPermittedComponentsList(java.util.List p5)
    {
        int v1;
        boolean vtmp3 = com.afwsamples.testdpc.policy.PolicyManagementFragment.access$400(this.this$0).setPermittedAccessibilityServices(com.afwsamples.testdpc.policy.PolicyManagementFragment.access$700(this.this$0), p5);
        if (p5 != null) {
            v1 = 2131690191;
        } else {
            v1 = 2131689536;
        }
        if (!vtmp3) {
            v1 = 2131690190;
        }
        Object[] v3_1 = new Object[0];
        com.afwsamples.testdpc.policy.PolicyManagementFragment.access$200(this.this$0, v1, v3_1);
        return;
    }
}
