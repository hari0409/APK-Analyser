package com.afwsamples.testdpc;
public class BootReceiver extends android.content.BroadcastReceiver {

    public BootReceiver()
    {
        return;
    }

    private com.afwsamples.testdpc.comp.BindDeviceAdminServiceHelper createBindDeviceOwnerServiceHelper(android.content.Context p4, android.os.UserHandle p5)
    {
        return new com.afwsamples.testdpc.comp.BindDeviceAdminServiceHelper(p4, com.afwsamples.testdpc.comp.DeviceOwnerService, com.afwsamples.testdpc.BootReceiver$$Lambda$1.$instance, p5);
    }

    static final synthetic void lambda$onReceive$97$BootReceiver(com.afwsamples.testdpc.comp.IDeviceOwnerService p1)
    {
        p1.notifyUserIsUnlocked(android.os.Process.myUserHandle());
        return;
    }

    public void onReceive(android.content.Context p6, android.content.Intent p7)
    {
        if (("android.intent.action.BOOT_COMPLETED".equals(p7.getAction())) && ((com.afwsamples.testdpc.common.Util.isProfileOwner(p6)) && (com.afwsamples.testdpc.common.Util.getBindDeviceAdminTargetUsers(p6).size() != 0))) {
            this.createBindDeviceOwnerServiceHelper(p6, ((android.os.UserHandle) com.afwsamples.testdpc.common.Util.getBindDeviceAdminTargetUsers(p6).get(0))).crossUserCall(com.afwsamples.testdpc.BootReceiver$$Lambda$0.$instance);
        }
        return;
    }
}
