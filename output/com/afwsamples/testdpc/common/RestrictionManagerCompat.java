package com.afwsamples.testdpc.common;
public class RestrictionManagerCompat {
    private static final String TAG = "RestrictionManager";

    public RestrictionManagerCompat()
    {
        return;
    }

    private static void addBundleArrayRestrictionToBundle(android.os.Bundle p6, android.content.RestrictionEntry p7)
    {
        if (com.afwsamples.testdpc.common.Util.SDK_INT < 23) {
            android.util.Log.w("RestrictionManager", "addBundleArrayRestrictionToBundle is called in pre-M");
        } else {
            android.content.RestrictionEntry[] v1 = p7.getRestrictions();
            android.os.Bundle[] v0 = new android.os.Bundle[v1.length];
            int v3 = 0;
            while (v3 < v1.length) {
                android.content.RestrictionEntry[] v2 = v1[v3].getRestrictions();
                if (v2 != null) {
                    v0[v3] = com.afwsamples.testdpc.common.RestrictionManagerCompat.convertRestrictionsToBundle(java.util.Arrays.asList(v2));
                } else {
                    android.util.Log.w("RestrictionManager", "addRestrictionToBundle: Non-bundle entry found in bundle array");
                    v0[v3] = new android.os.Bundle();
                }
                v3++;
            }
            p6.putParcelableArray(p7.getKey(), v0);
        }
        return;
    }

    private static void addBundleRestrictionToBundle(android.os.Bundle p4, android.content.RestrictionEntry p5)
    {
        if (com.afwsamples.testdpc.common.Util.SDK_INT < 23) {
            android.util.Log.w("RestrictionManager", "addBundleRestrictionToBundle is called in pre-M");
        } else {
            p4.putBundle(p5.getKey(), com.afwsamples.testdpc.common.RestrictionManagerCompat.convertRestrictionsToBundle(java.util.Arrays.asList(p5.getRestrictions())));
        }
        return;
    }

    private static android.os.Bundle addRestrictionToBundle(android.os.Bundle p3, android.content.RestrictionEntry p4)
    {
        switch (p4.getType()) {
            case 0:
            case 6:
                p3.putString(p4.getKey(), p4.getSelectedString());
                break;
            case 1:
                p3.putBoolean(p4.getKey(), p4.getSelectedState());
                break;
            case 2:
            case 4:
                p3.putStringArray(p4.getKey(), p4.getAllSelectedStrings());
                break;
            case 3:
            default:
                throw new IllegalArgumentException(new StringBuilder().append("Unsupported restrictionEntry type: ").append(p4.getType()).toString());
                break;
            case 5:
                p3.putInt(p4.getKey(), p4.getIntValue());
                break;
            case 7:
                com.afwsamples.testdpc.common.RestrictionManagerCompat.addBundleRestrictionToBundle(p3, p4);
                break;
            case 8:
                com.afwsamples.testdpc.common.RestrictionManagerCompat.addBundleArrayRestrictionToBundle(p3, p4);
                break;
        }
        return p3;
    }

    public static android.os.Bundle convertRestrictionsToBundle(java.util.List p4)
    {
        android.os.Bundle v0_1 = new android.os.Bundle();
        java.util.Iterator v2 = p4.iterator();
        while (v2.hasNext()) {
            com.afwsamples.testdpc.common.RestrictionManagerCompat.addRestrictionToBundle(v0_1, ((android.content.RestrictionEntry) v2.next()));
        }
        return v0_1;
    }
}
