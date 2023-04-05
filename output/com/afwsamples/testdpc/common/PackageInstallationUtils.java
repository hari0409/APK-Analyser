package com.afwsamples.testdpc.common;
public class PackageInstallationUtils {
    public static final String ACTION_INSTALL_COMPLETE = "com.afwsamples.testdpc.INSTALL_COMPLETE";
    private static final String ACTION_UNINSTALL_COMPLETE = "com.afwsamples.testdpc.UNINSTALL_COMPLETE";

    public PackageInstallationUtils()
    {
        return;
    }

    private static android.content.IntentSender createInstallIntentSender(android.content.Context p3, int p4)
    {
        return android.app.PendingIntent.getBroadcast(p3, p4, new android.content.Intent("com.afwsamples.testdpc.INSTALL_COMPLETE"), 0).getIntentSender();
    }

    private static android.content.IntentSender createUninstallIntentSender(android.content.Context p4, String p5)
    {
        android.content.Intent v0_1 = new android.content.Intent("com.afwsamples.testdpc.UNINSTALL_COMPLETE");
        v0_1.putExtra("android.intent.extra.PACKAGE_NAME", p5);
        return android.app.PendingIntent.getBroadcast(p4, 0, v0_1, 0).getIntentSender();
    }

    public static boolean installPackage(android.content.Context p13, java.io.InputStream p14, String p15)
    {
        android.content.pm.PackageInstaller v9 = p13.getPackageManager().getPackageInstaller();
        android.content.pm.PackageInstaller$SessionParams v10_1 = new android.content.pm.PackageInstaller$SessionParams(1);
        v10_1.setAppPackageName(p15);
        int v11 = v9.createSession(v10_1);
        android.content.pm.PackageInstaller$Session v0 = v9.openSession(v11);
        java.io.OutputStream v8 = v0.openWrite("TestDPC", 0, -1);
        byte[] v6 = new byte[65536];
        while(true) {
            int v7 = p14.read(v6);
            if (v7 == -1) {
                break;
            }
            v8.write(v6, 0, v7);
        }
        v0.fsync(v8);
        p14.close();
        v8.close();
        v0.commit(com.afwsamples.testdpc.common.PackageInstallationUtils.createInstallIntentSender(p13, v11));
        return 1;
    }

    public static void uninstallPackage(android.content.Context p2, String p3)
    {
        p2.getPackageManager().getPackageInstaller().uninstall(p3, com.afwsamples.testdpc.common.PackageInstallationUtils.createUninstallIntentSender(p2, p3));
        return;
    }
}
