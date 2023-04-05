package com.afwsamples.testdpc.policy.wifimanagement;
public class WifiConfigUtil {
    private static final int INVALID_NETWORK_ID = 255;

    public WifiConfigUtil()
    {
        return;
    }

    private static int addWifiNetwork(android.net.wifi.WifiManager p4, android.net.wifi.WifiConfiguration p5)
    {
        int v0 = p4.addNetwork(p5);
        if (v0 != -1) {
            if ((android.os.Build$VERSION.SDK_INT < 26) && (!com.afwsamples.testdpc.policy.wifimanagement.WifiConfigUtil.saveAddedWifiConfiguration(p4, v0))) {
                v0 = -1;
            }
        } else {
            v0 = -1;
        }
        return v0;
    }

    private static boolean saveAddedWifiConfiguration(android.net.wifi.WifiManager p2, int p3)
    {
        int v1;
        if (p2.saveConfiguration()) {
            v1 = 1;
        } else {
            p2.removeNetwork(p3);
            v1 = 0;
        }
        return v1;
    }

    private static boolean saveUpdatedWifiConfiguration(android.net.wifi.WifiManager p1)
    {
        return p1.saveConfiguration();
    }

    public static boolean saveWifiConfiguration(android.content.Context p5, android.net.wifi.WifiConfiguration p6)
    {
        int v0;
        int v2 = 0;
        android.net.wifi.WifiManager v1_1 = ((android.net.wifi.WifiManager) p5.getSystemService("wifi"));
        if (p6.networkId != -1) {
            v0 = com.afwsamples.testdpc.policy.wifimanagement.WifiConfigUtil.updateWifiNetwork(v1_1, p6);
        } else {
            v0 = com.afwsamples.testdpc.policy.wifimanagement.WifiConfigUtil.addWifiNetwork(v1_1, p6);
        }
        if (v0 != -1) {
            v1_1.enableNetwork(v0, 0);
            v2 = 1;
        }
        return v2;
    }

    private static int updateWifiNetwork(android.net.wifi.WifiManager p4, android.net.wifi.WifiConfiguration p5)
    {
        int v0 = p4.updateNetwork(p5);
        if (v0 != -1) {
            if ((android.os.Build$VERSION.SDK_INT < 26) && (!com.afwsamples.testdpc.policy.wifimanagement.WifiConfigUtil.saveUpdatedWifiConfiguration(p4))) {
                v0 = -1;
            }
        } else {
            v0 = -1;
        }
        return v0;
    }
}
