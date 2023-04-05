package com.afwsamples.testdpc;
final synthetic class BootReceiver$$Lambda$0 implements com.afwsamples.testdpc.comp.OnServiceConnectedListener {
    static final com.afwsamples.testdpc.comp.OnServiceConnectedListener $instance;

    static BootReceiver$$Lambda$0()
    {
        com.afwsamples.testdpc.BootReceiver$$Lambda$0.$instance = new com.afwsamples.testdpc.BootReceiver$$Lambda$0();
        return;
    }

    private BootReceiver$$Lambda$0()
    {
        return;
    }

    public void onServiceConnected(Object p1)
    {
        com.afwsamples.testdpc.BootReceiver.lambda$onReceive$97$BootReceiver(((com.afwsamples.testdpc.comp.IDeviceOwnerService) p1));
        return;
    }
}
