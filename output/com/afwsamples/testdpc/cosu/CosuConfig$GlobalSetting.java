package com.afwsamples.testdpc.cosu;
 class CosuConfig$GlobalSetting {
    public final String key;
    final synthetic com.afwsamples.testdpc.cosu.CosuConfig this$0;
    public final String value;

    public CosuConfig$GlobalSetting(com.afwsamples.testdpc.cosu.CosuConfig p1, String p2, String p3)
    {
        this.this$0 = p1;
        this.key = p2;
        this.value = p3;
        return;
    }

    public String toString()
    {
        return new StringBuilder().append("setting: ").append(this.key).append(" value: ").append(this.value).toString();
    }
}
