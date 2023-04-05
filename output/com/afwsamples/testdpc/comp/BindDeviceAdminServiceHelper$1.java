package com.afwsamples.testdpc.comp;
 class BindDeviceAdminServiceHelper$1 implements android.content.ServiceConnection {
    final synthetic com.afwsamples.testdpc.comp.BindDeviceAdminServiceHelper this$0;
    final synthetic com.afwsamples.testdpc.comp.OnServiceConnectedListener val$listener;

    BindDeviceAdminServiceHelper$1(com.afwsamples.testdpc.comp.BindDeviceAdminServiceHelper p1, com.afwsamples.testdpc.comp.OnServiceConnectedListener p2)
    {
        this.this$0 = p1;
        this.val$listener = p2;
        return;
    }

    public void onServiceConnected(android.content.ComponentName p5, android.os.IBinder p6)
    {
        android.util.Log.d("BindDeviceAdminService", "onServiceConnected() called");
        try {
            this.val$listener.onServiceConnected(com.afwsamples.testdpc.comp.BindDeviceAdminServiceHelper.access$000(this.this$0).convert(p6));
            com.afwsamples.testdpc.comp.BindDeviceAdminServiceHelper.access$100(this.this$0).unbindService(this);
        } catch (android.content.Context v2_6) {
            com.afwsamples.testdpc.comp.BindDeviceAdminServiceHelper.access$100(this.this$0).unbindService(this);
            throw v2_6;
        } catch (android.os.RemoteException v0) {
            android.util.Log.e("BindDeviceAdminService", "onServiceConnected: ", v0);
            com.afwsamples.testdpc.comp.BindDeviceAdminServiceHelper.access$100(this.this$0).unbindService(this);
        }
        return;
    }

    public void onServiceDisconnected(android.content.ComponentName p3)
    {
        android.util.Log.e("BindDeviceAdminService", "onServiceDisconnected() called");
        com.afwsamples.testdpc.comp.BindDeviceAdminServiceHelper.access$100(this.this$0).unbindService(this);
        return;
    }
}
