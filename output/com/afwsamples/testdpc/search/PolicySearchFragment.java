package com.afwsamples.testdpc.search;
public class PolicySearchFragment extends android.app.Fragment implements com.afwsamples.testdpc.search.SearchItemAdapter$OnItemClickListener {
    private static final int MIN_LENGTH_TO_SEARCH = 3;
    private static final String TAG = "PolicySearchFragment";
    private com.afwsamples.testdpc.search.SearchItemAdapter mAdapter;
    private java.util.List mAvailableFragments;
    private android.widget.SearchView mSearchView;
    private com.afwsamples.testdpc.search.PreferenceIndexSqliteOpenHelper mSqliteOpenHelper;

    public PolicySearchFragment()
    {
        return;
    }

    static synthetic void access$000(com.afwsamples.testdpc.search.PolicySearchFragment p0, String p1)
    {
        p0.doSearchAsync(p1);
        return;
    }

    static synthetic java.util.List access$100(com.afwsamples.testdpc.search.PolicySearchFragment p1)
    {
        return p1.mAvailableFragments;
    }

    static synthetic com.afwsamples.testdpc.search.PreferenceIndexSqliteOpenHelper access$200(com.afwsamples.testdpc.search.PolicySearchFragment p1)
    {
        return p1.mSqliteOpenHelper;
    }

    static synthetic com.afwsamples.testdpc.search.SearchItemAdapter access$300(com.afwsamples.testdpc.search.PolicySearchFragment p1)
    {
        return p1.mAdapter;
    }

    private void doSearchAsync(String p3)
    {
        Void[] v1_1 = new Void[0];
        new com.afwsamples.testdpc.search.PolicySearchFragment$3(this, p3).execute(v1_1);
        return;
    }

    private java.util.List getAvailableFragments()
    {
        java.util.List v2 = com.afwsamples.testdpc.search.IndexableFragments.values();
        java.util.ArrayList v0_1 = new java.util.ArrayList();
        java.util.Iterator v3 = v2.iterator();
        while (v3.hasNext()) {
            com.afwsamples.testdpc.search.BaseIndexableFragment v1_1 = ((com.afwsamples.testdpc.search.BaseIndexableFragment) v3.next());
            if (v1_1.isAvailable(this.getActivity())) {
                v0_1.add(v1_1.fragmentName);
            }
        }
        return v0_1;
    }

    public static com.afwsamples.testdpc.search.PolicySearchFragment newInstance()
    {
        return new com.afwsamples.testdpc.search.PolicySearchFragment();
    }

    public void onCreate(android.os.Bundle p2)
    {
        super.onCreate(p2);
        this.setHasOptionsMenu(1);
        this.mSqliteOpenHelper = com.afwsamples.testdpc.search.PreferenceIndexSqliteOpenHelper.getInstance(this.getActivity());
        this.mAdapter = new com.afwsamples.testdpc.search.SearchItemAdapter(this);
        this.mAvailableFragments = this.getAvailableFragments();
        return;
    }

    public void onCreateOptionsMenu(android.view.Menu p5, android.view.MenuInflater p6)
    {
        android.view.MenuItem v1 = p5.findItem(2131296294);
        if (v1 != null) {
            v1.setVisible(0);
        }
        p6.inflate(2131492865, p5);
        android.view.MenuItem v0 = p5.findItem(2131296293);
        v0.expandActionView();
        this.mSearchView = ((android.widget.SearchView) v0.getActionView());
        this.mSearchView.setOnQueryTextListener(new com.afwsamples.testdpc.search.PolicySearchFragment$1(this));
        v0.setOnActionExpandListener(new com.afwsamples.testdpc.search.PolicySearchFragment$2(this));
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p4, android.view.ViewGroup p5, android.os.Bundle p6)
    {
        androidx.recyclerview.widget.RecyclerView v0_1 = ((androidx.recyclerview.widget.RecyclerView) p4.inflate(2131427435, p5, 0));
        v0_1.setLayoutManager(new androidx.recyclerview.widget.LinearLayoutManager(this.getActivity()));
        v0_1.setAdapter(this.mAdapter);
        return v0_1;
    }

    public void onItemClick(com.afwsamples.testdpc.search.PreferenceIndex p7)
    {
        try {
            android.app.Fragment v2_1 = ((android.app.Fragment) Class.forName(p7.fragmentClass).newInstance());
            android.os.Bundle v0_1 = new android.os.Bundle();
            v0_1.putString("preference_key", p7.key);
            v2_1.setArguments(v0_1);
            this.getFragmentManager().beginTransaction().replace(2131296376, v2_1).addToBackStack(new StringBuilder().append("search_").append(v2_1.getClass().getName()).toString()).commit();
        } catch (InstantiationException v1) {
            android.util.Log.e("PolicySearchFragment", "Fail to create the target fragment: ", v1);
        } catch (InstantiationException v1) {
        } catch (InstantiationException v1) {
        }
        return;
    }
}
