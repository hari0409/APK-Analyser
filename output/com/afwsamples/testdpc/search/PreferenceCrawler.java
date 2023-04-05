package com.afwsamples.testdpc.search;
public class PreferenceCrawler {
    private static final String TAG = "PreferenceCrawler_Timer";
    private android.content.Context mContext;

    public PreferenceCrawler(android.content.Context p1)
    {
        this.mContext = p1;
        return;
    }

    public java.util.List doCrawl()
    {
        android.util.TimingLogger v3_1 = new android.util.TimingLogger("PreferenceCrawler_Timer", "doCrawl");
        java.util.ArrayList v2_1 = new java.util.ArrayList();
        String v4_2 = com.afwsamples.testdpc.search.IndexableFragments.values().iterator();
        while (v4_2.hasNext()) {
            com.afwsamples.testdpc.search.BaseIndexableFragment v0_1 = ((com.afwsamples.testdpc.search.BaseIndexableFragment) v4_2.next());
            v2_1.addAll(v0_1.index(this.mContext));
            v3_1.addSplit(new StringBuilder().append("processed ").append(v0_1.fragmentName).toString());
        }
        v3_1.addSplit("Finish crawling");
        v3_1.dumpToLog();
        return v2_1;
    }
}
