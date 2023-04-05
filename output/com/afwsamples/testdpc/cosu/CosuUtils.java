package com.afwsamples.testdpc.cosu;
 class CosuUtils {
    public static final boolean DEBUG = False;
    private static final int DOWNLOAD_TIMEOUT_MILLIS = 120000;
    public static final int MSG_DOWNLOAD_COMPLETE = 1;
    public static final int MSG_DOWNLOAD_TIMEOUT = 2;
    public static final int MSG_INSTALL_COMPLETE = 3;
    public static final String TAG = "CosuSetup";

    CosuUtils()
    {
        return;
    }

    public static Long startDownload(android.app.DownloadManager p6, android.os.Handler p7, String p8)
    {
        Long v0 = Long.valueOf(p6.enqueue(new android.app.DownloadManager$Request(android.net.Uri.parse(p8))));
        p7.sendMessageDelayed(p7.obtainMessage(2, v0), 120000);
        return v0;
    }
}
