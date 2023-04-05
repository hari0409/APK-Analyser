package com.afwsamples.testdpc.search;
 class PolicySearchFragment$2 implements android.view.MenuItem$OnActionExpandListener {
    final synthetic com.afwsamples.testdpc.search.PolicySearchFragment this$0;

    PolicySearchFragment$2(com.afwsamples.testdpc.search.PolicySearchFragment p1)
    {
        this.this$0 = p1;
        return;
    }

    public boolean onMenuItemActionCollapse(android.view.MenuItem p2)
    {
        this.this$0.getFragmentManager().popBackStack();
        return 1;
    }

    public boolean onMenuItemActionExpand(android.view.MenuItem p2)
    {
        return 0;
    }
}
