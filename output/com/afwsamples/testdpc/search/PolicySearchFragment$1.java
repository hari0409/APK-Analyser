package com.afwsamples.testdpc.search;
 class PolicySearchFragment$1 implements android.widget.SearchView$OnQueryTextListener {
    final synthetic com.afwsamples.testdpc.search.PolicySearchFragment this$0;

    PolicySearchFragment$1(com.afwsamples.testdpc.search.PolicySearchFragment p1)
    {
        this.this$0 = p1;
        return;
    }

    public boolean onQueryTextChange(String p3)
    {
        if ((p3 == null) || (p3.length() < 3)) {
            int v0_1 = 0;
        } else {
            com.afwsamples.testdpc.search.PolicySearchFragment.access$000(this.this$0, p3);
            v0_1 = 1;
        }
        return v0_1;
    }

    public boolean onQueryTextSubmit(String p2)
    {
        com.afwsamples.testdpc.search.PolicySearchFragment.access$000(this.this$0, p2);
        return 1;
    }
}
