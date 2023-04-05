package com.afwsamples.testdpc.common;
public abstract class BaseSearchablePolicyPreferenceFragment extends androidx.preference.PreferenceFragment implements com.afwsamples.testdpc.common.Dumpable {
    private static final int DELAY_HIGHLIGHT_DURATION_MILLIS = 500;
    public static final String EXTRA_PREFERENCE_KEY = "preference_key";
    private static final String SAVE_HIGHLIGHTED_KEY = "preference_highlighted";
    private com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter mAdapter;
    protected androidx.recyclerview.widget.LinearLayoutManager mLayoutManager;
    private boolean mPreferenceHighlighted;
    private String mPreferenceKey;
    private final String mTag;

    protected BaseSearchablePolicyPreferenceFragment()
    {
        this.mTag = this.getClass().getSimpleName();
        return;
    }

    protected BaseSearchablePolicyPreferenceFragment(String p1)
    {
        this.mTag = p1;
        return;
    }

    static synthetic com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter access$100(com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment p1)
    {
        return p1.mAdapter;
    }

    private int canUseListViewForHighLighting(String p5)
    {
        int v2 = -1;
        if (this.getListView() != null) {
            androidx.preference.PreferenceGroupAdapter v0_1 = this.getListView().getAdapter();
            if ((v0_1 != null) && ((v0_1 instanceof androidx.preference.PreferenceGroupAdapter))) {
                v2 = this.findListPositionFromKey(((androidx.preference.PreferenceGroupAdapter) v0_1), p5);
            }
        }
        return v2;
    }

    private int findListPositionFromKey(androidx.preference.PreferenceGroupAdapter p6, String p7)
    {
        int v0 = p6.getItemCount();
        int v1 = 0;
        while (v1 < v0) {
            String v3 = p6.getItem(v1).getKey();
            if ((v3 == null) || (!v3.equals(p7))) {
                v1++;
            }
            return v1;
        }
        v1 = -1;
        return v1;
    }

    private void highlightPreference(String p7)
    {
        int v0 = this.canUseListViewForHighLighting(p7);
        if (v0 >= 0) {
            this.mPreferenceHighlighted = 1;
            this.mLayoutManager.scrollToPosition(v0);
            this.getView().postDelayed(new com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment$1(this, v0), 500);
        }
        return;
    }

    private void highlightPreferenceIfNeeded()
    {
        if ((this.isAdded()) && ((!this.mPreferenceHighlighted) && (!android.text.TextUtils.isEmpty(this.mPreferenceKey)))) {
            this.highlightPreference(this.mPreferenceKey);
        }
        return;
    }

    public final void dump(String p7, java.io.FileDescriptor p8, java.io.PrintWriter p9, String[] p10)
    {
        this.dump(p7, p9, p8, com.afwsamples.testdpc.common.Dumpable$$CC.isQuietMode$$STATIC$$(p10), p10);
        return;
    }

    public final void dump(String p7, java.io.PrintWriter p8, java.io.FileDescriptor p9, boolean p10, String[] p11)
    {
        if (this.mAdapter != null) {
            Object[] v1_3 = new Object[2];
            v1_3[0] = p7;
            v1_3[1] = Integer.valueOf(com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter.access$000(this.mAdapter));
            p8.printf("%smHighlightPosition: %d\n", v1_3);
        } else {
            Object[] v1_0 = new Object[1];
            v1_0[0] = p7;
            p8.printf("%sno adapter\n", v1_0);
        }
        Object[] v1_1 = new Object[2];
        v1_1[0] = p7;
        v1_1[1] = this.mPreferenceKey;
        p8.printf("%smPreferenceKey: %s\n", v1_1);
        Object[] v1_2 = new Object[2];
        v1_2[0] = p7;
        v1_2[1] = Boolean.valueOf(this.mPreferenceHighlighted);
        p8.printf("%smPreferenceHighlighted: %b\n", v1_2);
        this.dump(p7, p8, p11);
        if (!p10) {
            super.dump(p7, p9, p8, p11);
        }
        return;
    }

    protected void dump(String p1, java.io.PrintWriter p2, String[] p3)
    {
        return;
    }

    public abstract boolean isAvailable();

    public void onCreate(android.os.Bundle p3)
    {
        super.onCreate(p3);
        if (p3 != null) {
            this.mPreferenceHighlighted = p3.getBoolean("preference_highlighted");
        }
        android.os.Bundle v0 = this.getArguments();
        if (v0 != null) {
            this.mPreferenceKey = v0.getString("preference_key");
        }
        this.setHasOptionsMenu(1);
        return;
    }

    protected androidx.recyclerview.widget.RecyclerView$Adapter onCreateAdapter(androidx.preference.PreferenceScreen p2)
    {
        this.mAdapter = new com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter(p2);
        return this.mAdapter;
    }

    public androidx.recyclerview.widget.RecyclerView$LayoutManager onCreateLayoutManager()
    {
        this.mLayoutManager = new androidx.recyclerview.widget.LinearLayoutManager(this.getActivity());
        return this.mLayoutManager;
    }

    public void onCreateOptionsMenu(android.view.Menu p6, android.view.MenuInflater p7)
    {
        int v2 = 1;
        super.onCreateOptionsMenu(p6, p7);
        android.view.MenuItem v1 = p6.findItem(2131296294);
        if (v1 != null) {
            int v0;
            if (android.text.TextUtils.isEmpty(this.mPreferenceKey)) {
                v0 = 0;
            } else {
                v0 = 1;
            }
            if (v0 != 0) {
                v2 = 0;
            }
            v1.setVisible(v2);
        }
        return;
    }

    protected void onErrorLog(String p4, Exception p5)
    {
        android.util.Log.e(this.mTag, new StringBuilder().append(p4).append("() failed: ").toString(), p5);
        return;
    }

    public void onResume()
    {
        super.onResume();
        this.highlightPreferenceIfNeeded();
        return;
    }

    public void onSaveInstanceState(android.os.Bundle p3)
    {
        super.onSaveInstanceState(p3);
        p3.putBoolean("preference_highlighted", this.mPreferenceHighlighted);
        return;
    }

    protected void onSuccessLog(String p4)
    {
        android.util.Log.d(this.mTag, new StringBuilder().append(p4).append("() succeeded").toString());
        return;
    }

    protected varargs void onSuccessLog(String p4, Object[] p5)
    {
        android.util.Log.d(this.mTag, new StringBuilder().append(String.format(p4, p5)).append("() succeeded").toString());
        return;
    }
}
