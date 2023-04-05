package com.afwsamples.testdpc.comp;
final synthetic class BindDeviceAdminFragment$$Lambda$3 implements com.afwsamples.testdpc.comp.OnServiceConnectedListener {
    private final com.afwsamples.testdpc.comp.BindDeviceAdminFragment arg$1;

    BindDeviceAdminFragment$$Lambda$3(com.afwsamples.testdpc.comp.BindDeviceAdminFragment p1)
    {
        this.arg$1 = p1;
        return;
    }

    public void onServiceConnected(Object p2)
    {
        this.arg$1.lambda$refresh$214$BindDeviceAdminFragment(((com.afwsamples.testdpc.comp.IProfileOwnerService) p2));
        return;
    }
}
