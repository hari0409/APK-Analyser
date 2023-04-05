package com.afwsamples.testdpc;
 class CommonReceiverOperations$EventSavingTask extends android.os.AsyncTask {
    private long mBatchToken;
    private android.content.Context mContext;
    private java.util.List mLoggedEvents;

    public CommonReceiverOperations$EventSavingTask(android.content.Context p1, long p2, java.util.ArrayList p4)
    {
        this.mContext = p1;
        this.mBatchToken = p2;
        this.mLoggedEvents = p4;
        return;
    }

    protected bridge synthetic Object doInBackground(Object[] p2)
    {
        return this.doInBackground(((Void[]) p2));
    }

    protected varargs Void doInBackground(Void[] p13)
    {
        String v3 = new StringBuilder().append("network_logs_").append(this.mBatchToken).append("_").append(new java.util.Date().getTime()).append(".txt").toString();
        try {
            java.io.FileOutputStream v4_1 = new java.io.FileOutputStream(new java.io.File(this.mContext.getExternalFilesDir(0), v3));
            try {
                Throwable v7_3 = this.mLoggedEvents.iterator();
            } catch (Throwable v6_10) {
                Throwable v7_6 = v6_10;
                Throwable v8_6 = 0;
                if (v4_1 != null) {
                    if (v8_6 == null) {
                        v4_1.close();
                    } else {
                        v4_1.close();
                    }
                }
                throw v7_6;
            } catch (Throwable v6_9) {
                try {
                    throw v6_9;
                } catch (Throwable v7_6) {
                    v8_6 = v6_9;
                }
            }
            while (v7_3.hasNext()) {
                v4_1.write(new StringBuilder().append(((String) v7_3.next())).append("\n").toString().getBytes());
            }
            android.util.Log.d("AdminReceiver", new StringBuilder().append("Saved network logs to file: ").append(v3).toString());
            if (v4_1 == null) {
                return 0;
            } else {
                if (0 == 0) {
                    v4_1.close();
                    return 0;
                } else {
                    try {
                        v4_1.close();
                    } catch (Throwable v7_7) {
                        0.addSuppressed(v7_7);
                    }
                    return 0;
                }
            }
        } catch (java.io.IOException v0) {
            android.util.Log.e("AdminReceiver", new StringBuilder().append("Failed saving network events to file").append(v3).toString(), v0);
            return 0;
        }
    }
}
