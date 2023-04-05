package com.afwsamples.testdpc;
final synthetic class BootReceiver$$Lambda$1 implements com.afwsamples.testdpc.comp.ServiceInterfaceConverter {
    static final com.afwsamples.testdpc.comp.ServiceInterfaceConverter $instance;

    static BootReceiver$$Lambda$1()
    {
        com.afwsamples.testdpc.BootReceiver$$Lambda$1.$instance = new com.afwsamples.testdpc.BootReceiver$$Lambda$1();
        return;
    }

    private BootReceiver$$Lambda$1()
    {
        return;
    }

    public Object convert(android.os.IBinder p2)
    {
        return com.afwsamples.testdpc.comp.IDeviceOwnerService$Stub.asInterface(p2);
    }
}
