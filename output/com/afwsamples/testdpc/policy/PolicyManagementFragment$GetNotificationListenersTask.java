package com.afwsamples.testdpc.policy;
 class PolicyManagementFragment$GetNotificationListenersTask extends com.afwsamples.testdpc.policy.GetAvailableComponentsTask {
    final synthetic com.afwsamples.testdpc.policy.PolicyManagementFragment this$0;

    public PolicyManagementFragment$GetNotificationListenersTask(com.afwsamples.testdpc.policy.PolicyManagementFragment p3)
    {
        this.this$0 = p3;
        super(p3.getActivity(), 2131690216);
        return;
    }

    protected bridge synthetic Object doInBackground(Object[] p2)
    {
        return this.doInBackground(((Void[]) p2));
    }

    protected varargs java.util.List doInBackground(Void[] p4)
    {
        return com.afwsamples.testdpc.policy.PolicyManagementFragment.access$2000(this.this$0).queryIntentServices(new android.content.Intent("android.service.notification.NotificationListenerService"), 8320);
    }

    protected java.util.List getPermittedComponentsList()
    {
        return com.afwsamples.testdpc.policy.PolicyManagementFragment.access$400(this.this$0).getPermittedCrossProfileNotificationListeners(com.afwsamples.testdpc.policy.PolicyManagementFragment.access$700(this.this$0));
    }

    protected java.util.List getResolveInfoListFromAvailableComponents(java.util.List p1)
    {
        return p1;
    }

    protected void setPermittedComponentsList(java.util.List p2)
    {
        com.afwsamples.testdpc.policy.PolicyManagementFragment.access$2100(this.this$0, p2);
        return;
    }
}
