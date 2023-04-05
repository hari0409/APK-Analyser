package com.afwsamples.testdpc.policy.networking;
public class NetworkUsageStatsFragment extends android.app.ListFragment implements android.view.View$OnClickListener, android.widget.AdapterView$OnItemSelectedListener, com.afwsamples.testdpc.common.OnBackPressedHandler {
    private static final int QUERY_APPHISTORY_POS = 4;
    private static final int QUERY_APPSUMMARY_POS = 3;
    private static final int QUERY_DEVICE_POS = 1;
    private static final int QUERY_PROFILE_POS = 2;
    private static final String TAG = "TestDPC.NetworkUsageStatsFragment";
    private android.widget.ListView mAppHistoryList;
    private android.widget.ListView mDataUsageList;
    private android.widget.TextView mDataUsageSummary;
    private java.text.DateFormat mDateStringFormat;
    private java.util.Date mEndDate;
    private android.widget.Button mEndDateButton;
    private android.widget.TextView mExplanation;
    private java.text.DateFormat mHourMinuteDateFormat;
    private android.widget.ArrayAdapter mListAdapter;
    private java.util.List mListData;
    private android.app.usage.NetworkStatsManager mNetstatsManager;
    private android.content.pm.PackageManager mPackageManager;
    private android.widget.Spinner mQuerySpinner;
    private java.util.Date mStartDate;
    private android.widget.Button mStartDateButton;

    public NetworkUsageStatsFragment()
    {
        return;
    }

    static synthetic void access$000(com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment p0, android.view.View p1, java.util.List p2)
    {
        p0.bindView(p1, p2);
        return;
    }

    static synthetic String access$100(com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment p1, long p2)
    {
        return p1.formatSize(p2);
    }

    static synthetic java.text.DateFormat access$200(com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment p1)
    {
        return p1.mDateStringFormat;
    }

    static synthetic java.text.DateFormat access$300(com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment p1)
    {
        return p1.mHourMinuteDateFormat;
    }

    static synthetic void access$400(com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment p0)
    {
        p0.updateButtonsText();
        return;
    }

    private void bindView(android.view.View p27, java.util.List p28)
    {
        com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment$ViewHolder v21_1 = ((com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment$ViewHolder) p27.getTag());
        android.widget.TextView v19 = v21_1.title;
        android.widget.TextView v18 = v21_1.summary;
        android.widget.TextView v17 = v21_1.state;
        android.widget.ImageView v9 = v21_1.image;
        android.graphics.drawable.Drawable v8 = this.getResources().getDrawable(17301659, 0);
        android.app.usage.NetworkStats$Bucket v5_1 = ((android.app.usage.NetworkStats$Bucket) p28.get(0));
        int v20 = v5_1.getUid();
        switch (v20) {
            case -5:
                v19.setText(2131689970);
                break;
            case -4:
                v19.setText(2131689968);
                break;
            case 1000:
                v19.setText(2131689969);
                break;
            default:
                int v11;
                android.content.pm.PackageManager v0_41 = new Object[1];
                int v23_6 = v0_41;
                v23_6[0] = Integer.valueOf(v20);
                v19.setText(this.getString(2131689967, v23_6));
                v8 = this.mPackageManager.getDefaultActivityIcon();
                String[] v14 = this.mPackageManager.getPackagesForUid(v20);
                if (v14 == null) {
                    v11 = 0;
                } else {
                    v11 = v14.length;
                }
                try {
                    if (v11 != 1) {
                        int v7 = 0;
                        while (v7 < v11) {
                            String v13 = v14[v7];
                            android.content.pm.PackageInfo v12 = this.mPackageManager.getPackageInfo(v13, 0);
                            android.content.pm.ApplicationInfo v4 = this.mPackageManager.getApplicationInfo(v13, 0);
                            if ((v4 != null) && ((v12 != null) && (v12.sharedUserLabel != 0))) {
                                v19.setText(this.mPackageManager.getText(v13, v12.sharedUserLabel, v12.applicationInfo));
                                v8 = v4.loadIcon(this.mPackageManager);
                            }
                            v7++;
                        }
                    } else {
                        android.content.pm.ApplicationInfo v10 = this.mPackageManager.getApplicationInfo(v14[0], 0);
                        if (v10 == null) {
                        } else {
                            v19.setText(v10.loadLabel(this.mPackageManager));
                            v8 = v10.loadIcon(this.mPackageManager);
                        }
                    }
                } catch (android.content.pm.PackageManager v22) {
                }
        }
        v9.setImageDrawable(v8);
        int v6 = p28.size();
        if (v6 != 1) {
            android.content.pm.PackageManager v0_24 = new Object[1];
            int v23_3 = v0_24;
            v23_3[0] = Integer.valueOf(v6);
            v18.setText(this.getString(2131689961, v23_3));
            v17.setText(2131689954);
        } else {
            v18.setText(this.formatSize((v5_1.getRxBytes() + v5_1.getTxBytes())));
            switch (v5_1.getState()) {
                case -1:
                    v17.setText(2131689954);
                case 0:
                default:
                    break;
                case 1:
                    v17.setText(2131689955);
                    break;
                case 2:
                    v17.setText(2131689960);
                    break;
            }
        }
        return;
    }

    private String formatSize(long p2)
    {
        return android.text.format.Formatter.formatFileSize(this.getActivity(), p2);
    }

    private java.util.Date getTodayPlus(int p4, int p5)
    {
        java.util.Calendar v0 = java.util.Calendar.getInstance();
        v0.set(10, 0);
        v0.set(12, 0);
        v0.set(13, 0);
        v0.set(14, 0);
        if (p5 > 0) {
            v0.add(p4, p5);
        }
        return v0.getTime();
    }

    private void pickDate(java.util.Date p8)
    {
        java.util.Calendar v6 = java.util.Calendar.getInstance();
        v6.setTime(p8);
        new android.app.DatePickerDialog(this.getActivity(), new com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment$3(this, v6, p8), v6.get(1), v6.get(2), v6.get(5)).show();
        return;
    }

    private void showErrorDialog(CharSequence p4)
    {
        new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131689959).setIconAttribute(16843605).setMessage(p4).setPositiveButton(17039370, 0).show();
        return;
    }

    private void transitionAppHistoryView(int p3)
    {
        int v0_1;
        this.mAppHistoryList.setVisibility(p3);
        if (p3 != 0) {
            v0_1 = 0;
        } else {
            v0_1 = 8;
        }
        this.mDataUsageList.setVisibility(v0_1);
        return;
    }

    private void updateButtonsText()
    {
        java.text.DateFormat v0 = java.text.DateFormat.getDateInstance(2);
        if (this.mStartDateButton != null) {
            this.mStartDateButton.setText(v0.format(this.mStartDate));
        }
        if (this.mEndDateButton != null) {
            this.mEndDateButton.setText(v0.format(this.mEndDate));
        }
        return;
    }

    public boolean onBackPressed()
    {
        int v0_2;
        if (this.mAppHistoryList.getVisibility() != 0) {
            v0_2 = 0;
        } else {
            this.transitionAppHistoryView(8);
            v0_2 = 1;
        }
        return v0_2;
    }

    public void onClick(android.view.View p2)
    {
        switch (p2.getId()) {
            case 2131296427:
                this.pickDate(this.mEndDate);
                break;
            case 2131296638:
                this.pickDate(this.mStartDate);
                break;
        }
        return;
    }

    public void onCreate(android.os.Bundle p3)
    {
        super.onCreate(p3);
        this.mDateStringFormat = new java.text.SimpleDateFormat("*dd/MM/yyyy*");
        this.mHourMinuteDateFormat = new java.text.SimpleDateFormat("kk:mm");
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p10, android.view.ViewGroup p11, android.os.Bundle p12)
    {
        super.onCreateView(p10, p11, p12);
        android.view.View v7 = p10.inflate(2131427395, p11, 0);
        this.getActivity().getActionBar().setTitle(2131689671);
        this.mPackageManager = this.getActivity().getPackageManager();
        this.mNetstatsManager = ((android.app.usage.NetworkStatsManager) this.getActivity().getSystemService("netstats"));
        this.mListData = new java.util.ArrayList();
        this.mListAdapter = new com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment$1(this, this.getActivity(), 2131427374, 16908310, this.mListData, p10);
        this.mQuerySpinner = ((android.widget.Spinner) v7.findViewById(2131296562));
        this.mQuerySpinner.setOnItemSelectedListener(this);
        this.mExplanation = ((android.widget.TextView) v7.findViewById(2131296436));
        this.mStartDate = this.getTodayPlus(0, 0);
        this.mEndDate = this.getTodayPlus(5, 1);
        this.mStartDateButton = ((android.widget.Button) v7.findViewById(2131296638));
        if (this.mStartDateButton != null) {
            this.mStartDateButton.setOnClickListener(this);
        }
        this.mEndDateButton = ((android.widget.Button) v7.findViewById(2131296427));
        if (this.mEndDateButton != null) {
            this.mEndDateButton.setOnClickListener(this);
        }
        this.updateButtonsText();
        this.mDataUsageSummary = ((android.widget.TextView) v7.findViewById(2131296396));
        this.mDataUsageList = ((android.widget.ListView) v7.findViewById(16908298));
        this.mDataUsageList.setAdapter(this.mListAdapter);
        this.mAppHistoryList = ((android.widget.ListView) v7.findViewById(2131296329));
        return v7;
    }

    public void onItemSelected(android.widget.AdapterView p15, android.view.View p16, int p17, long p18)
    {
        try {
            android.app.usage.NetworkStats v11 = 0;
            this.mDataUsageSummary.setVisibility(8);
            this.mDataUsageList.setVisibility(8);
            this.mAppHistoryList.setVisibility(8);
            this.mExplanation.setText("");
            switch (p17) {
                case 1:
                    android.app.usage.NetworkStats$Bucket v0_2 = this.mNetstatsManager.querySummaryForDevice(1, "", this.mStartDate.getTime(), this.mEndDate.getTime());
                    this.mExplanation.setText(2131689957);
                    java.util.List v1_8 = this.mDataUsageSummary;
                    int v3_5 = new Object[4];
                    v3_5[0] = this.formatSize(v0_2.getRxBytes());
                    v3_5[1] = Long.valueOf(v0_2.getRxPackets());
                    v3_5[2] = this.formatSize(v0_2.getTxBytes());
                    v3_5[3] = Long.valueOf(v0_2.getTxPackets());
                    v1_8.setText(this.getString(2131689956, v3_5));
                    this.mDataUsageSummary.setVisibility(0);
                    if (v11 == null) {
                    } else {
                        v11.close();
                    }
                    break;
                case 2:
                    android.app.usage.NetworkStats$Bucket v0_1 = this.mNetstatsManager.querySummaryForUser(1, "", this.mStartDate.getTime(), this.mEndDate.getTime());
                    this.mExplanation.setText(2131689963);
                    java.util.List v1_3 = this.mDataUsageSummary;
                    int v3_2 = new Object[4];
                    v3_2[0] = this.formatSize(v0_1.getRxBytes());
                    v3_2[1] = Long.valueOf(v0_1.getRxPackets());
                    v3_2[2] = this.formatSize(v0_1.getTxBytes());
                    v3_2[3] = Long.valueOf(v0_1.getTxPackets());
                    v1_3.setText(this.getString(2131689962, v3_2));
                    this.mDataUsageSummary.setVisibility(0);
                    break;
                case 3:
                    v11 = this.mNetstatsManager.querySummary(1, "", this.mStartDate.getTime(), this.mEndDate.getTime());
                    this.mListData.clear();
                    if (v11 != null) {
                        while (v11.hasNextBucket()) {
                            android.app.usage.NetworkStats$Bucket v0_6 = new android.app.usage.NetworkStats$Bucket();
                            v11.getNextBucket(v0_6);
                            java.util.List v1_29 = this.mListData;
                            java.util.List v2_19 = new android.app.usage.NetworkStats$Bucket[1];
                            v2_19[0] = v0_6;
                            v1_29.add(java.util.Arrays.asList(v2_19));
                        }
                    }
                    this.mListAdapter.notifyDataSetChanged();
                    this.mDataUsageList.setVisibility(0);
                    break;
                case 4:
                    v11 = this.mNetstatsManager.queryDetails(1, "", this.mStartDate.getTime(), this.mEndDate.getTime());
                    this.mListData.clear();
                    android.util.SparseArray v13_1 = new android.util.SparseArray();
                    if (v11 != null) {
                        while (v11.hasNextBucket()) {
                            android.app.usage.NetworkStats$Bucket v0_4 = new android.app.usage.NetworkStats$Bucket();
                            v11.getNextBucket(v0_4);
                            int v12 = v0_4.getUid();
                            java.util.ArrayList v10_1 = ((java.util.List) v13_1.get(v12));
                            if (v10_1 == null) {
                                v10_1 = new java.util.ArrayList();
                                this.mListData.add(v10_1);
                                v13_1.put(v12, v10_1);
                            }
                            v10_1.add(v0_4);
                        }
                    }
                    this.mListAdapter.notifyDataSetChanged();
                    this.mDataUsageList.setVisibility(0);
                    break;
                default:
            }
        } catch (java.util.List v1_16) {
            if (v11 != null) {
                v11.close();
            }
            throw v1_16;
        } catch (SecurityException v9) {
            this.showErrorDialog(this.getString(2131689965));
            if (v11 == null) {
            } else {
                v11.close();
            }
        } catch (java.util.List v1_11) {
            v9 = v1_11;
            this.showErrorDialog(v9.toString());
            if (v11 == null) {
            } else {
                v11.close();
            }
        } catch (java.util.List v1_16) {
        } catch (SecurityException v9) {
        } catch (java.util.List v1_11) {
        } catch (java.util.List v1_10) {
            v9 = v1_10;
        }
        return;
    }

    public void onListItemClick(android.widget.ListView p7, android.view.View p8, int p9, long p10)
    {
        java.util.List v5_1 = ((java.util.List) this.mListAdapter.getItem(p9));
        this.transitionAppHistoryView(8);
        if ((v5_1 != null) && (v5_1.size() > 1)) {
            this.transitionAppHistoryView(0);
            this.mAppHistoryList.setAdapter(new com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment$2(this, this.getActivity(), 17367053, 16908310, v5_1));
        }
        return;
    }

    public void onNothingSelected(android.widget.AdapterView p1)
    {
        return;
    }
}
