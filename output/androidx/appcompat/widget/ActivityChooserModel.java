package androidx.appcompat.widget;
 class ActivityChooserModel extends android.database.DataSetObservable {
    static final String ATTRIBUTE_ACTIVITY = "activity";
    static final String ATTRIBUTE_TIME = "time";
    static final String ATTRIBUTE_WEIGHT = "weight";
    static final boolean DEBUG = False;
    private static final int DEFAULT_ACTIVITY_INFLATION = 5;
    private static final float DEFAULT_HISTORICAL_RECORD_WEIGHT = 16256;
    public static final String DEFAULT_HISTORY_FILE_NAME = "activity_choser_model_history.xml";
    public static final int DEFAULT_HISTORY_MAX_LENGTH = 50;
    private static final String HISTORY_FILE_EXTENSION = ".xml";
    private static final int INVALID_INDEX = 255;
    static final String LOG_TAG = "";
    static final String TAG_HISTORICAL_RECORD = "historical-record";
    static final String TAG_HISTORICAL_RECORDS = "historical-records";
    private static final java.util.Map sDataModelRegistry;
    private static final Object sRegistryLock;
    private final java.util.List mActivities;
    private androidx.appcompat.widget.ActivityChooserModel$OnChooseActivityListener mActivityChoserModelPolicy;
    private androidx.appcompat.widget.ActivityChooserModel$ActivitySorter mActivitySorter;
    boolean mCanReadHistoricalData;
    final android.content.Context mContext;
    private final java.util.List mHistoricalRecords;
    private boolean mHistoricalRecordsChanged;
    final String mHistoryFileName;
    private int mHistoryMaxSize;
    private final Object mInstanceLock;
    private android.content.Intent mIntent;
    private boolean mReadShareHistoryCalled;
    private boolean mReloadActivities;

    static ActivityChooserModel()
    {
        androidx.appcompat.widget.ActivityChooserModel.LOG_TAG = androidx.appcompat.widget.ActivityChooserModel.getSimpleName();
        androidx.appcompat.widget.ActivityChooserModel.sRegistryLock = new Object();
        androidx.appcompat.widget.ActivityChooserModel.sDataModelRegistry = new java.util.HashMap();
        return;
    }

    private ActivityChooserModel(android.content.Context p4, String p5)
    {
        this.mInstanceLock = new Object();
        this.mActivities = new java.util.ArrayList();
        this.mHistoricalRecords = new java.util.ArrayList();
        this.mActivitySorter = new androidx.appcompat.widget.ActivityChooserModel$DefaultSorter();
        this.mHistoryMaxSize = 50;
        this.mCanReadHistoricalData = 1;
        this.mReadShareHistoryCalled = 0;
        this.mHistoricalRecordsChanged = 1;
        this.mReloadActivities = 0;
        this.mContext = p4.getApplicationContext();
        if ((android.text.TextUtils.isEmpty(p5)) || (p5.endsWith(".xml"))) {
            this.mHistoryFileName = p5;
        } else {
            this.mHistoryFileName = new StringBuilder().append(p5).append(".xml").toString();
        }
        return;
    }

    private boolean addHistoricalRecord(androidx.appcompat.widget.ActivityChooserModel$HistoricalRecord p3)
    {
        boolean v0 = this.mHistoricalRecords.add(p3);
        if (v0) {
            this.mHistoricalRecordsChanged = 1;
            this.pruneExcessiveHistoricalRecordsIfNeeded();
            this.persistHistoricalDataIfNeeded();
            this.sortActivitiesIfNeeded();
            this.notifyChanged();
        }
        return v0;
    }

    private void ensureConsistentState()
    {
        int v0_1 = (this.loadActivitiesIfNeeded() | this.readHistoricalDataIfNeeded());
        this.pruneExcessiveHistoricalRecordsIfNeeded();
        if (v0_1 != 0) {
            this.sortActivitiesIfNeeded();
            this.notifyChanged();
        }
        return;
    }

    public static androidx.appcompat.widget.ActivityChooserModel get(android.content.Context p3, String p4)
    {
        try {
            androidx.appcompat.widget.ActivityChooserModel v0_1 = ((androidx.appcompat.widget.ActivityChooserModel) androidx.appcompat.widget.ActivityChooserModel.sDataModelRegistry.get(p4));
        } catch (java.util.Map v1_1) {
            throw v1_1;
        }
        if (v0_1 == null) {
            v0_1 = new androidx.appcompat.widget.ActivityChooserModel(p3, p4);
            androidx.appcompat.widget.ActivityChooserModel.sDataModelRegistry.put(p4, v0_1);
        }
        return v0_1;
    }

    private boolean loadActivitiesIfNeeded()
    {
        int v4_0 = 0;
        if ((this.mReloadActivities) && (this.mIntent != null)) {
            this.mReloadActivities = 0;
            this.mActivities.clear();
            java.util.List v3 = this.mContext.getPackageManager().queryIntentActivities(this.mIntent, 0);
            int v2 = v3.size();
            int v0 = 0;
            while (v0 < v2) {
                this.mActivities.add(new androidx.appcompat.widget.ActivityChooserModel$ActivityResolveInfo(((android.content.pm.ResolveInfo) v3.get(v0))));
                v0++;
            }
            v4_0 = 1;
        }
        return v4_0;
    }

    private void persistHistoricalDataIfNeeded()
    {
        if (this.mReadShareHistoryCalled) {
            if (this.mHistoricalRecordsChanged) {
                this.mHistoricalRecordsChanged = 0;
                if (!android.text.TextUtils.isEmpty(this.mHistoryFileName)) {
                    androidx.appcompat.widget.ActivityChooserModel$PersistHistoryAsyncTask v0_2 = new androidx.appcompat.widget.ActivityChooserModel$PersistHistoryAsyncTask(this);
                    Object[] v2_1 = new Object[2];
                    v2_1[0] = new java.util.ArrayList(this.mHistoricalRecords);
                    v2_1[1] = this.mHistoryFileName;
                    v0_2.executeOnExecutor(android.os.AsyncTask.THREAD_POOL_EXECUTOR, v2_1);
                }
            }
            return;
        } else {
            throw new IllegalStateException("No preceding call to #readHistoricalData");
        }
    }

    private void pruneExcessiveHistoricalRecordsIfNeeded()
    {
        int v1 = (this.mHistoricalRecords.size() - this.mHistoryMaxSize);
        if (v1 > 0) {
            this.mHistoricalRecordsChanged = 1;
            int v0 = 0;
            while (v0 < v1) {
                this.mHistoricalRecords.remove(0);
                v0++;
            }
        }
        return;
    }

    private boolean readHistoricalDataIfNeeded()
    {
        int v0 = 1;
        if ((!this.mCanReadHistoricalData) || ((!this.mHistoricalRecordsChanged) || (android.text.TextUtils.isEmpty(this.mHistoryFileName)))) {
            v0 = 0;
        } else {
            this.mCanReadHistoricalData = 0;
            this.mReadShareHistoryCalled = 1;
            this.readHistoricalDataImpl();
        }
        return v0;
    }

    private void readHistoricalDataImpl()
    {
        try {
            java.io.FileInputStream v3 = this.mContext.openFileInput(this.mHistoryFileName);
        } catch (org.xmlpull.v1.XmlPullParserException v14) {
            android.util.Log.e(androidx.appcompat.widget.ActivityChooserModel.LOG_TAG, new StringBuilder().append("Error reading historical recrod file: ").append(this.mHistoryFileName).toString(), v14);
            if (v3 == null) {
                return;
            } else {
                try {
                    v3.close();
                } catch (String v15) {
                }
                return;
            }
        } catch (java.io.IOException v6) {
            android.util.Log.e(androidx.appcompat.widget.ActivityChooserModel.LOG_TAG, new StringBuilder().append("Error reading historical recrod file: ").append(this.mHistoryFileName).toString(), v6);
            if (v3 == null) {
                return;
            } else {
                try {
                    v3.close();
                } catch (String v15) {
                }
                return;
            }
        } catch (String v15_1) {
            if (v3 != null) {
                try {
                    v3.close();
                } catch (String v16) {
                }
            }
            throw v15_1;
        }
        org.xmlpull.v1.XmlPullParser v8 = android.util.Xml.newPullParser();
        v8.setInput(v3, "UTF-8");
        int v12_0 = 0;
        while ((v12_0 != 1) && (v12_0 != 2)) {
            v12_0 = v8.next();
        }
        if ("historical-records".equals(v8.getName())) {
            java.util.List v5 = this.mHistoricalRecords;
            v5.clear();
            while(true) {
                int v12_1 = v8.next();
                if (v12_1 != 1) {
                    if ((v12_1 != 3) && (v12_1 != 4)) {
                        if (!"historical-record".equals(v8.getName())) {
                            break;
                        }
                        v5.add(new androidx.appcompat.widget.ActivityChooserModel$HistoricalRecord(v8.getAttributeValue(0, "activity"), Long.parseLong(v8.getAttributeValue(0, "time")), Float.parseFloat(v8.getAttributeValue(0, "weight"))));
                    }
                } else {
                    if (v3 == null) {
                        return;
                    } else {
                        try {
                            v3.close();
                        } catch (String v15) {
                        }
                        return;
                    }
                }
            }
            throw new org.xmlpull.v1.XmlPullParserException("Share records file not well-formed.");
        } else {
            throw new org.xmlpull.v1.XmlPullParserException("Share records file does not start with historical-records tag.");
        }
    }

    private boolean sortActivitiesIfNeeded()
    {
        if ((this.mActivitySorter == null) || ((this.mIntent == null) || ((this.mActivities.isEmpty()) || (this.mHistoricalRecords.isEmpty())))) {
            int v0_2 = 0;
        } else {
            this.mActivitySorter.sort(this.mIntent, this.mActivities, java.util.Collections.unmodifiableList(this.mHistoricalRecords));
            v0_2 = 1;
        }
        return v0_2;
    }

    public android.content.Intent chooseActivity(int p11)
    {
        try {
            int v0_1;
            if (this.mIntent != null) {
                this.ensureConsistentState();
                androidx.appcompat.widget.ActivityChooserModel$ActivityResolveInfo v2_1 = ((androidx.appcompat.widget.ActivityChooserModel$ActivityResolveInfo) this.mActivities.get(p11));
                android.content.ComponentName v3_0 = new android.content.ComponentName(v2_1.resolveInfo.activityInfo.packageName, v2_1.resolveInfo.activityInfo.name);
                v0_1 = new android.content.Intent(this.mIntent);
                v0_1.setComponent(v3_0);
                if ((this.mActivityChoserModelPolicy == null) || (!this.mActivityChoserModelPolicy.onChooseActivity(this, new android.content.Intent(v0_1)))) {
                    this.addHistoricalRecord(new androidx.appcompat.widget.ActivityChooserModel$HistoricalRecord(v3_0, System.currentTimeMillis(), 1065353216));
                } else {
                    v0_1 = 0;
                }
            } else {
                v0_1 = 0;
            }
        } catch (int v6_2) {
            throw v6_2;
        }
        return v0_1;
    }

    public android.content.pm.ResolveInfo getActivity(int p3)
    {
        try {
            this.ensureConsistentState();
            return ((androidx.appcompat.widget.ActivityChooserModel$ActivityResolveInfo) this.mActivities.get(p3)).resolveInfo;
        } catch (Throwable v0_4) {
            throw v0_4;
        }
    }

    public int getActivityCount()
    {
        try {
            this.ensureConsistentState();
            return this.mActivities.size();
        } catch (Throwable v0_2) {
            throw v0_2;
        }
    }

    public int getActivityIndex(android.content.pm.ResolveInfo p7)
    {
        try {
            this.ensureConsistentState();
            java.util.List v0 = this.mActivities;
            int v1 = v0.size();
            int v3 = 0;
        } catch (android.content.pm.ResolveInfo v4_1) {
            throw v4_1;
        }
        while (v3 < v1) {
            if (((androidx.appcompat.widget.ActivityChooserModel$ActivityResolveInfo) v0.get(v3)).resolveInfo != p7) {
                v3++;
            } else {
            }
            return v3;
        }
        v3 = -1;
        return v3;
    }

    public android.content.pm.ResolveInfo getDefaultActivity()
    {
        try {
            int v0_2;
            this.ensureConsistentState();
        } catch (int v0_3) {
            throw v0_3;
        }
        if (this.mActivities.isEmpty()) {
            v0_2 = 0;
        } else {
            v0_2 = ((androidx.appcompat.widget.ActivityChooserModel$ActivityResolveInfo) this.mActivities.get(0)).resolveInfo;
        }
        return v0_2;
    }

    public int getHistoryMaxSize()
    {
        try {
            return this.mHistoryMaxSize;
        } catch (Throwable v0_1) {
            throw v0_1;
        }
    }

    public int getHistorySize()
    {
        try {
            this.ensureConsistentState();
            return this.mHistoricalRecords.size();
        } catch (Throwable v0_2) {
            throw v0_2;
        }
    }

    public android.content.Intent getIntent()
    {
        try {
            return this.mIntent;
        } catch (Throwable v0_1) {
            throw v0_1;
        }
    }

    public void setActivitySorter(androidx.appcompat.widget.ActivityChooserModel$ActivitySorter p3)
    {
        try {
            if (this.mActivitySorter != p3) {
                this.mActivitySorter = p3;
                if (this.sortActivitiesIfNeeded()) {
                    this.notifyChanged();
                }
            } else {
            }
        } catch (boolean v0_2) {
            throw v0_2;
        }
        return;
    }

    public void setDefaultActivity(int p11)
    {
        try {
            int v4;
            this.ensureConsistentState();
            androidx.appcompat.widget.ActivityChooserModel$ActivityResolveInfo v2_1 = ((androidx.appcompat.widget.ActivityChooserModel$ActivityResolveInfo) this.mActivities.get(p11));
            androidx.appcompat.widget.ActivityChooserModel$ActivityResolveInfo v3_0 = ((androidx.appcompat.widget.ActivityChooserModel$ActivityResolveInfo) this.mActivities.get(0));
        } catch (String v5_6) {
            throw v5_6;
        }
        if (v3_0 == null) {
            v4 = 1065353216;
        } else {
            v4 = ((v3_0.weight - v2_1.weight) + 1084227584);
        }
        this.addHistoricalRecord(new androidx.appcompat.widget.ActivityChooserModel$HistoricalRecord(new android.content.ComponentName(v2_1.resolveInfo.activityInfo.packageName, v2_1.resolveInfo.activityInfo.name), System.currentTimeMillis(), v4));
        return;
    }

    public void setHistoryMaxSize(int p3)
    {
        try {
            if (this.mHistoryMaxSize != p3) {
                this.mHistoryMaxSize = p3;
                this.pruneExcessiveHistoricalRecordsIfNeeded();
                if (this.sortActivitiesIfNeeded()) {
                    this.notifyChanged();
                }
            } else {
            }
        } catch (boolean v0_1) {
            throw v0_1;
        }
        return;
    }

    public void setIntent(android.content.Intent p3)
    {
        try {
            if (this.mIntent != p3) {
                this.mIntent = p3;
                this.mReloadActivities = 1;
                this.ensureConsistentState();
            } else {
            }
        } catch (int v0_2) {
            throw v0_2;
        }
        return;
    }

    public void setOnChooseActivityListener(androidx.appcompat.widget.ActivityChooserModel$OnChooseActivityListener p3)
    {
        try {
            this.mActivityChoserModelPolicy = p3;
            return;
        } catch (Throwable v0) {
            throw v0;
        }
    }
}
