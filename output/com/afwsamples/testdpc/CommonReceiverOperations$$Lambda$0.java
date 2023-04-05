package com.afwsamples.testdpc;
final synthetic class CommonReceiverOperations$$Lambda$0 implements java.util.function.Consumer {
    private final java.util.ArrayList arg$1;

    CommonReceiverOperations$$Lambda$0(java.util.ArrayList p1)
    {
        this.arg$1 = p1;
        return;
    }

    public void accept(Object p2)
    {
        com.afwsamples.testdpc.CommonReceiverOperations.lambda$onNetworkLogsAvailable$195$CommonReceiverOperations(this.arg$1, ((android.app.admin.NetworkEvent) p2));
        return;
    }
}
