package androidx.appcompat.widget;
final class ActivityChooserModel$PersistHistoryAsyncTask extends android.os.AsyncTask {
    final synthetic androidx.appcompat.widget.ActivityChooserModel this$0;

    ActivityChooserModel$PersistHistoryAsyncTask(androidx.appcompat.widget.ActivityChooserModel p1)
    {
        this.this$0 = p1;
        return;
    }

    public bridge synthetic Object doInBackground(Object[] p2)
    {
        return this.doInBackground(p2);
    }

    public varargs Void doInBackground(Object[] p19)
    {
        java.util.List v4_1 = ((java.util.List) p19[0]);
        String v5_1 = ((String) p19[1]);
        try {
            java.io.FileOutputStream v3 = this.this$0.mContext.openFileOutput(v5_1, 0);
            org.xmlpull.v1.XmlSerializer v12 = android.util.Xml.newSerializer();
            try {
                v12.setOutput(v3, 0);
                v12.startDocument("UTF-8", Boolean.valueOf(1));
                v12.startTag(0, "historical-records");
                int v11 = v4_1.size();
                int v6 = 0;
            } catch (IllegalArgumentException v7) {
                android.util.Log.e(androidx.appcompat.widget.ActivityChooserModel.LOG_TAG, new StringBuilder().append("Error writing historical record file: ").append(this.this$0.mHistoryFileName).toString(), v7);
                this.this$0.mCanReadHistoricalData = 1;
                if (v3 == null) {
                    java.io.IOException v13_3 = 0;
                    return v13_3;
                } else {
                    try {
                        v3.close();
                    } catch (java.io.IOException v13) {
                    }
                }
            } catch (IllegalStateException v9) {
                android.util.Log.e(androidx.appcompat.widget.ActivityChooserModel.LOG_TAG, new StringBuilder().append("Error writing historical record file: ").append(this.this$0.mHistoryFileName).toString(), v9);
                this.this$0.mCanReadHistoricalData = 1;
                if (v3 == null) {
                } else {
                    try {
                        v3.close();
                    } catch (java.io.IOException v13) {
                    }
                }
            } catch (java.io.IOException v8) {
                android.util.Log.e(androidx.appcompat.widget.ActivityChooserModel.LOG_TAG, new StringBuilder().append("Error writing historical record file: ").append(this.this$0.mHistoryFileName).toString(), v8);
                this.this$0.mCanReadHistoricalData = 1;
                if (v3 == null) {
                } else {
                    try {
                        v3.close();
                    } catch (java.io.IOException v13) {
                    }
                }
            } catch (java.io.IOException v13_2) {
                this.this$0.mCanReadHistoricalData = 1;
                if (v3 != null) {
                    try {
                        v3.close();
                    } catch (int v14) {
                    }
                }
                throw v13_2;
            }
            while (v6 < v11) {
                androidx.appcompat.widget.ActivityChooserModel$HistoricalRecord v10_1 = ((androidx.appcompat.widget.ActivityChooserModel$HistoricalRecord) v4_1.remove(0));
                v12.startTag(0, "historical-record");
                v12.attribute(0, "activity", v10_1.activity.flattenToString());
                v12.attribute(0, "time", String.valueOf(v10_1.time));
                v12.attribute(0, "weight", String.valueOf(v10_1.weight));
                v12.endTag(0, "historical-record");
                v6++;
            }
            v12.endTag(0, "historical-records");
            v12.endDocument();
            this.this$0.mCanReadHistoricalData = 1;
            if (v3 == null) {
            } else {
                try {
                    v3.close();
                } catch (java.io.IOException v13) {
                }
            }
        } catch (java.io.FileNotFoundException v2) {
            android.util.Log.e(androidx.appcompat.widget.ActivityChooserModel.LOG_TAG, new StringBuilder().append("Error writing historical record file: ").append(v5_1).toString(), v2);
            v13_3 = 0;
            return v13_3;
        }
    }
}
