package com.afwsamples.testdpc.comp;
final synthetic class BindDeviceAdminFragment$$Lambda$2 implements com.afwsamples.testdpc.comp.ServiceInterfaceConverter {
    static final com.afwsamples.testdpc.comp.ServiceInterfaceConverter $instance;

    static BindDeviceAdminFragment$$Lambda$2()
    {
        com.afwsamples.testdpc.comp.BindDeviceAdminFragment$$Lambda$2.$instance = new com.afwsamples.testdpc.comp.BindDeviceAdminFragment$$Lambda$2();
        return;
    }

    private BindDeviceAdminFragment$$Lambda$2()
    {
        return;
    }

    public Object convert(android.os.IBinder p2)
    {
        return com.afwsamples.testdpc.comp.IProfileOwnerService$Stub.asInterface(p2);
    }
}
