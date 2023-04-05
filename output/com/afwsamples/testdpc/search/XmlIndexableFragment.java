package com.afwsamples.testdpc.search;
public class XmlIndexableFragment extends com.afwsamples.testdpc.search.BaseIndexableFragment {
    private static final String NODE_NAME_PREFERENCE_CATEGORY = "PreferenceCategory";
    private static final String NODE_NAME_PREFERENCE_SCREEN = "PreferenceScreen";
    private static final String TAG = "PreferenceCrawler_Timer";
    public int xmlRes;

    public XmlIndexableFragment(Class p1, int p2)
    {
        super(p1);
        super.xmlRes = p2;
        return;
    }

    public java.util.List index(android.content.Context p15)
    {
        java.util.ArrayList v3_1 = new java.util.ArrayList();
        android.content.res.XmlResourceParser v7 = p15.getResources().getXml(this.xmlRes);
        try {
            do {
                int v9_0 = v7.next();
            } while((v9_0 != 1) && (v9_0 != 2));
            String v5_0 = v7.getName();
            if ("PreferenceScreen".equals(v5_0)) {
                int v6 = v7.getDepth();
                android.util.AttributeSet v0 = android.util.Xml.asAttributeSet(v7);
                do {
                    int v9_1 = v7.next();
                    if ((v9_1 == 1) || ((v9_1 == 3) && (v7.getDepth() <= v6))) {
                        return v3_1;
                    } else {
                        if ((v9_1 != 3) && (v9_1 != 4)) {
                            String v5_1 = v7.getName();
                            String v4 = com.afwsamples.testdpc.search.PreferenceXmlUtil.getDataKey(p15, v0);
                            String v8 = com.afwsamples.testdpc.search.PreferenceXmlUtil.getDataTitle(p15, v0);
                        }
                    }
                } while(("PreferenceCategory".equals(v5_1)) || ((android.text.TextUtils.isEmpty(v4)) || (android.text.TextUtils.isEmpty(v8))));
                v3_1.add(new com.afwsamples.testdpc.search.PreferenceIndex(v4, v8, this.fragmentName));
            } else {
                throw new RuntimeException(new StringBuilder().append("XML document must start with <PreferenceScreen> tag; found").append(v5_0).append(" at ").append(v7.getPositionDescription()).toString());
            }
        } catch (ReflectiveOperationException v1) {
            android.util.Log.e("PreferenceCrawler_Timer", "Error in parsing a preference xml file, skip it", v1);
            return v3_1;
        } catch (ReflectiveOperationException v1) {
        } catch (ReflectiveOperationException v1) {
        }
        if ((v9_0 != 1) || (v9_0 == 2)) {
        }
    }
}
