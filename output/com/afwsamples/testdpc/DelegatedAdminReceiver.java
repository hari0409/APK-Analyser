package com.afwsamples.testdpc;
public class DelegatedAdminReceiver extends android.app.admin.DelegatedAdminReceiver {

    public DelegatedAdminReceiver()
    {
        return;
    }

    public String onChoosePrivateKeyAlias(android.content.Context p2, android.content.Intent p3, int p4, android.net.Uri p5, String p6)
    {
        return com.afwsamples.testdpc.CommonReceiverOperations.onChoosePrivateKeyAlias(p2, p4);
    }

    public void onNetworkLogsAvailable(android.content.Context p2, android.content.Intent p3, long p4, int p6)
    {
        com.afwsamples.testdpc.CommonReceiverOperations.onNetworkLogsAvailable(p2, 0, p4, p6);
        return;
    }
}
