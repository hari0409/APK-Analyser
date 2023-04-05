package com.afwsamples.testdpc.cosu;
 class CosuConfig$DownloadAppInfo {
    public boolean downloadCompleted;
    public Long downloadId;
    public final String downloadLocation;
    public boolean installCompleted;
    public final String packageName;
    final synthetic com.afwsamples.testdpc.cosu.CosuConfig this$0;

    public CosuConfig$DownloadAppInfo(com.afwsamples.testdpc.cosu.CosuConfig p2, String p3, String p4)
    {
        this.this$0 = p2;
        this.packageName = p3;
        this.downloadLocation = p4;
        this.downloadCompleted = 0;
        this.installCompleted = 0;
        return;
    }

    public String toString()
    {
        return new StringBuilder().append("packageName: ").append(this.packageName).append(" downloadLocation: ").append(this.downloadLocation).toString();
    }
}
