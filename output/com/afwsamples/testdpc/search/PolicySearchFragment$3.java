package com.afwsamples.testdpc.search;
 class PolicySearchFragment$3 extends android.os.AsyncTask {
    final synthetic com.afwsamples.testdpc.search.PolicySearchFragment this$0;
    final synthetic String val$query;

    PolicySearchFragment$3(com.afwsamples.testdpc.search.PolicySearchFragment p1, String p2)
    {
        this.this$0 = p1;
        this.val$query = p2;
        return;
    }

    protected bridge synthetic Object doInBackground(Object[] p2)
    {
        return this.doInBackground(((Void[]) p2));
    }

    protected varargs java.util.List doInBackground(Void[] p4)
    {
        return com.afwsamples.testdpc.search.PolicySearchFragment.access$200(this.this$0).lookup(this.val$query, com.afwsamples.testdpc.search.PolicySearchFragment.access$100(this.this$0));
    }

    protected bridge synthetic void onPostExecute(Object p1)
    {
        this.onPostExecute(((java.util.List) p1));
        return;
    }

    protected void onPostExecute(java.util.List p2)
    {
        com.afwsamples.testdpc.search.PolicySearchFragment.access$300(this.this$0).setSearchResult(p2);
        com.afwsamples.testdpc.search.PolicySearchFragment.access$300(this.this$0).notifyDataSetChanged();
        return;
    }
}
