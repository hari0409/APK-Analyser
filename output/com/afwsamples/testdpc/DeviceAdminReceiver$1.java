package com.afwsamples.testdpc;
 class DeviceAdminReceiver$1 extends android.os.AsyncTask {
    final synthetic com.afwsamples.testdpc.DeviceAdminReceiver this$0;
    final synthetic String val$bugreportFileHash;
    final synthetic android.net.Uri val$bugreportUri;
    final synthetic android.content.Context val$context;
    final synthetic android.content.BroadcastReceiver$PendingResult val$result;

    DeviceAdminReceiver$1(com.afwsamples.testdpc.DeviceAdminReceiver p1, android.content.Context p2, android.net.Uri p3, String p4, android.content.BroadcastReceiver$PendingResult p5)
    {
        this.this$0 = p1;
        this.val$context = p2;
        this.val$bugreportUri = p3;
        this.val$bugreportFileHash = p4;
        this.val$result = p5;
        return;
    }

    protected bridge synthetic Object doInBackground(Object[] p2)
    {
        return this.doInBackground(((Void[]) p2));
    }

    protected varargs String doInBackground(Void[] p16)
    {
        try {
            java.io.FileInputStream v2_0 = new java.io.FileInputStream(this.val$context.getContentResolver().openFileDescriptor(this.val$bugreportUri, "r").getFileDescriptor());
            java.io.File v6_1 = new java.io.File(this.val$context.getExternalFilesDir(0), this.val$bugreportUri.getLastPathSegment());
            android.util.Log.i("DeviceAdminReceiver", new StringBuilder().append("Writing bugreport to ").append(v6_1).toString());
            java.io.FileOutputStream v5_1 = new java.io.FileOutputStream(v6_1);
            byte[] v0 = new byte[1024];
            long v8 = 0;
        } catch (java.io.IOException v1) {
            android.util.Log.e("DeviceAdminReceiver", v1.getMessage());
            String v4 = this.val$context.getString(2131690100);
            return v4;
        }
        while(true) {
            int v7 = v2_0.read(v0);
            if (v7 == -1) {
                break;
            }
            v8 += ((long) v7);
            v5_1.write(v0, 0, v7);
        }
        v2_0.close();
        v5_1.close();
        String v10_7 = this.val$context;
        Object[] v12_3 = new Object[3];
        v12_3[0] = v6_1.getPath();
        v12_3[1] = this.val$bugreportFileHash;
        v12_3[2] = Long.valueOf(v8);
        v4 = v10_7.getString(2131690099, v12_3);
        android.util.Log.i("DeviceAdminReceiver", v4);
        return v4;
    }

    protected bridge synthetic void onPostExecute(Object p1)
    {
        this.onPostExecute(((String) p1));
        return;
    }

    protected void onPostExecute(String p4)
    {
        com.afwsamples.testdpc.common.NotificationUtil.showNotification(this.val$context, 2131689600, p4, 1);
        this.val$result.finish();
        return;
    }
}
