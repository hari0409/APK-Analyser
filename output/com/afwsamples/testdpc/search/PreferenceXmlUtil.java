package com.afwsamples.testdpc.search;
public class PreferenceXmlUtil {

    public PreferenceXmlUtil()
    {
        return;
    }

    private static String getData(android.content.Context p5, android.util.AttributeSet p6, int p7)
    {
        int v3_4 = new int[1];
        v3_4[0] = p7;
        android.content.res.TypedArray v1 = p5.obtainStyledAttributes(p6, v3_4);
        try {
            android.util.TypedValue v2 = v1.peekValue(0);
            CharSequence v0 = 0;
        } catch (int v3_5) {
            v1.recycle();
            throw v3_5;
        }
        if ((v2 != null) && (v2.type == 3)) {
            if (v2.resourceId == 0) {
                v0 = v2.string;
            } else {
                v0 = p5.getText(v2.resourceId);
            }
        }
        int v3_6;
        if (v0 == null) {
            v3_6 = 0;
        } else {
            v3_6 = v0.toString();
        }
        v1.recycle();
        return v3_6;
    }

    public static String getDataKey(android.content.Context p1, android.util.AttributeSet p2)
    {
        return com.afwsamples.testdpc.search.PreferenceXmlUtil.getData(p1, p2, 16843240);
    }

    public static String getDataTitle(android.content.Context p1, android.util.AttributeSet p2)
    {
        return com.afwsamples.testdpc.search.PreferenceXmlUtil.getData(p1, p2, 16843233);
    }
}
