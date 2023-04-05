package com.afwsamples.testdpc.policy;
public class NetworkLogsFragment extends android.app.ListFragment {
    private static final String TAG = "NetworkLogsFragment";
    private android.widget.ArrayAdapter mAdapter;
    private java.util.List mLogs;

    public NetworkLogsFragment()
    {
        this.mLogs = new java.util.ArrayList();
        return;
    }

    private long determineBatchToken(String p8)
    {
        String[] v3 = p8.split("_");
        if (v3.length > 2) {
            try {
                return Long.parseLong(v3[2]);
            } catch (java.util.regex.PatternSyntaxException v2) {
                throw new NumberFormatException(new StringBuilder().append("Failed parsing the batch from file: ").append(p8).toString());
            }
        } else {
            throw new NumberFormatException(new StringBuilder().append("Failed parsing the batch from file: ").append(p8).toString());
        }
    }

    private java.util.List fetchEvents()
    {
        java.util.List v3_1;
        java.io.File v5 = this.findLastBatch();
        if (v5 != null) {
            java.io.BufferedReader v6 = 0;
            try {
                long v0 = this.determineBatchToken(v5.getName());
                java.io.IOException v8_8 = this.mAdapter;
                java.io.IOException v9_0 = this.getContext();
                Object[] v11_1 = new Object[1];
                v11_1[0] = Long.valueOf(v0);
                v8_8.add(v9_0.getString(2131690000, v11_1));
                java.io.BufferedReader v7_1 = new java.io.BufferedReader(new java.io.FileReader(v5));
                try {
                    v3_1 = new java.util.ArrayList();
                } catch (java.io.IOException v8_5) {
                    v6 = v7_1;
                    if (v6 != null) {
                        try {
                            v6.close();
                        } catch (java.io.IOException v9) {
                        }
                    }
                    throw v8_5;
                } catch (java.io.IOException v8_3) {
                    v6 = v7_1;
                    this.mAdapter.add(this.getString(2131689999));
                    if (v6 != null) {
                        try {
                            v6.close();
                        } catch (java.io.IOException v8) {
                        }
                    }
                    v3_1 = java.util.Collections.emptyList();
                } catch (java.io.IOException v8_2) {
                    v6 = v7_1;
                }
                while(true) {
                    String v4 = v7_1.readLine();
                    if (v4 == null) {
                        break;
                    }
                    android.util.Log.v("NetworkLogsFragment", new StringBuilder().append("found line: ").append(v4).toString());
                    v3_1.add(v4);
                }
                if (v7_1 != null) {
                    try {
                        v7_1.close();
                    } catch (java.io.IOException v8) {
                    }
                }
            } catch (java.io.IOException v8_5) {
            } catch (java.io.IOException v8_3) {
            } catch (java.io.IOException v8_2) {
            }
        } else {
            v3_1 = java.util.Collections.emptyList();
        }
        return v3_1;
    }

    private java.io.File findLastBatch()
    {
        java.io.File v2_0 = 0;
        java.io.File v1 = this.getContext().getExternalFilesDir(0);
        if (v1 != null) {
            java.io.File[] v0 = v1.listFiles(com.afwsamples.testdpc.policy.NetworkLogsFragment$$Lambda$0.$instance);
            if ((v0 != null) && (v0.length != 0)) {
                v2_0 = ((java.io.File) java.util.Collections.max(java.util.Arrays.asList(v0), com.afwsamples.testdpc.policy.NetworkLogsFragment$$Lambda$1.$instance));
            }
        }
        return v2_0;
    }

    static final synthetic boolean lambda$findLastBatch$196$NetworkLogsFragment(java.io.File p1, String p2)
    {
        return p2.startsWith("network_logs_");
    }

    static final synthetic int lambda$findLastBatch$197$NetworkLogsFragment(java.io.File p4, java.io.File p5)
    {
        return Long.signum((p4.lastModified() - p5.lastModified()));
    }

    private void showEvents(java.util.List p5)
    {
        if (p5 != null) {
            android.util.Log.d("NetworkLogsFragment", new StringBuilder().append("Incoming logs size: ").append(p5.size()).toString());
            this.mAdapter.addAll(this.mLogs);
            android.widget.ListView v0 = this.getListView();
            v0.setSelection((v0.getCount() - 1));
        } else {
            android.util.Log.w("NetworkLogsFragment", "logs == null, are you polling too early?");
            this.mAdapter.add(this.getString(2131689999));
        }
        return;
    }

    public void onActivityCreated(android.os.Bundle p2)
    {
        super.onActivityCreated(p2);
        this.mLogs = this.fetchEvents();
        this.showEvents(this.mLogs);
        return;
    }

    public void onCreate(android.os.Bundle p6)
    {
        super.onCreate(p6);
        this.mAdapter = new android.widget.ArrayAdapter(this.getActivity(), 17367043, 16908308, this.mLogs);
        this.setListAdapter(this.mAdapter);
        return;
    }
}
