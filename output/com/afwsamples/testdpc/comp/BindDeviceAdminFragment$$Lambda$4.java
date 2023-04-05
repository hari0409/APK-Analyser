package com.afwsamples.testdpc.comp;
final synthetic class BindDeviceAdminFragment$$Lambda$4 implements com.afwsamples.testdpc.comp.OnServiceConnectedListener {
    private final Object arg$1;

    BindDeviceAdminFragment$$Lambda$4(Object p1)
    {
        this.arg$1 = p1;
        return;
    }

    public void onServiceConnected(Object p2)
    {
        com.afwsamples.testdpc.comp.BindDeviceAdminFragment.lambda$onPreferenceChange$215$BindDeviceAdminFragment(this.arg$1, ((com.afwsamples.testdpc.comp.IProfileOwnerService) p2));
        return;
    }
}
