package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$GetInputMethodsTask extends com.afwsamples.testdpc.policy.GetAvailableComponentsTask {
    private android.view.inputmethod.InputMethodManager mInputMethodManager;
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;

    public PolicyManagementFragment$GetInputMethodsTask(com.afwsamples.testdpc.policy.PolicyManagementFragment p3)
    {
        this.this$0 = p3;
        super(p3.getActivity(), 2131690204);
        super.mInputMethodManager = ((android.view.inputmethod.InputMethodManager) p3.getActivity().getSystemService("input_method"));
        return;
    }

    protected bridge synthetic Object doInBackground(Object[] p2)
    {
        return this.doInBackground(((Void[]) p2));
    }

    protected varargs java.util.List doInBackground(Void[] p2)
    {
        return this.mInputMethodManager.getInputMethodList();
    }

    protected java.util.List getPermittedComponentsList()
    {
        return com.afwsamples.testdpc.policy.PolicyManagementFragment.access$400(this.this$0).getPermittedInputMethods(com.afwsamples.testdpc.policy.PolicyManagementFragment.access$700(this.this$0));
    }

    protected java.util.List getResolveInfoListFromAvailableComponents(java.util.List p6)
    {
        java.util.ArrayList v1_1 = new java.util.ArrayList();
        java.util.Iterator v3 = p6.iterator();
        while (v3.hasNext()) {
            android.view.inputmethod.InputMethodInfo v0_0 = ((android.view.inputmethod.InputMethodInfo) v3.next());
            android.content.pm.ResolveInfo v2_1 = new android.content.pm.ResolveInfo();
            v2_1.serviceInfo = v0_0.getServiceInfo();
            v2_1.resolvePackageName = v0_0.getPackageName();
            v1_1.add(v2_1);
        }
        return v1_1;
    }

    protected void setPermittedComponentsList(java.util.List p5)
    {
        int v1;
        boolean vtmp3 = com.afwsamples.testdpc.policy.PolicyManagementFragment.access$400(this.this$0).setPermittedInputMethods(com.afwsamples.testdpc.policy.PolicyManagementFragment.access$700(this.this$0), p5);
        if (p5 != null) {
            v1 = 2131690207;
        } else {
            v1 = 2131689543;
        }
        if (!vtmp3) {
            v1 = 2131690205;
        }
        Object[] v3_1 = new Object[0];
        com.afwsamples.testdpc.policy.PolicyManagementFragment.access$200(this.this$0, v1, v3_1);
        return;
    }
}
