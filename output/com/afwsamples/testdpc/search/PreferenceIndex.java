package com.afwsamples.testdpc.search;
public class PreferenceIndex {
    public String fragmentClass;
    public String key;
    public String title;

    public PreferenceIndex(String p1, String p2, String p3)
    {
        this.key = p1;
        this.title = p2;
        this.fragmentClass = p3;
        return;
    }
}
