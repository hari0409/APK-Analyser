package com.afwsamples.testdpc.comp;
final synthetic class BindDeviceAdminFragment$$Lambda$5 implements com.afwsamples.testdpc.comp.OnServiceConnectedListener {
    private final com.afwsamples.testdpc.comp.BindDeviceAdminFragment arg$1;
    private final android.content.res.AssetFileDescriptor arg$2;

    BindDeviceAdminFragment$$Lambda$5(com.afwsamples.testdpc.comp.BindDeviceAdminFragment p1, android.content.res.AssetFileDescriptor p2)
    {
        this.arg$1 = p1;
        this.arg$2 = p2;
        return;
    }

    public void onServiceConnected(Object p3)
    {
        this.arg$1.lambda$onActivityResult$217$BindDeviceAdminFragment(this.arg$2, ((com.afwsamples.testdpc.comp.IProfileOwnerService) p3));
        return;
    }
}
