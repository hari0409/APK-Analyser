package com.afwsamples.testdpc.common;
public class BundleUtil {

    public BundleUtil()
    {
        return;
    }

    public static android.os.PersistableBundle bundleToPersistableBundle(android.os.Bundle p7)
    {
        java.util.Set v2 = p7.keySet();
        android.os.PersistableBundle v3_1 = new android.os.PersistableBundle();
        java.util.Iterator v5 = v2.iterator();
        while (v5.hasNext()) {
            String v1_1 = ((String) v5.next());
            android.os.Bundle v4_0 = p7.get(v1_1);
            if (!(v4_0 instanceof Boolean)) {
                if (!(v4_0 instanceof Integer)) {
                    if (!(v4_0 instanceof String)) {
                        if (!(v4_0 instanceof String[])) {
                            if ((v4_0 instanceof android.os.Bundle)) {
                                v3_1.putPersistableBundle(v1_1, com.afwsamples.testdpc.common.BundleUtil.bundleToPersistableBundle(((android.os.Bundle) v4_0)));
                            }
                        } else {
                            v3_1.putStringArray(v1_1, ((String[]) ((String[]) v4_0)));
                        }
                    } else {
                        v3_1.putString(v1_1, ((String) v4_0));
                    }
                } else {
                    v3_1.putInt(v1_1, ((Integer) v4_0).intValue());
                }
            } else {
                v3_1.putBoolean(v1_1, ((Boolean) v4_0).booleanValue());
            }
        }
        return v3_1;
    }

    public static android.os.Bundle persistableBundleToBundle(android.os.PersistableBundle p7)
    {
        java.util.Set v3 = p7.keySet();
        android.os.Bundle v0_1 = new android.os.Bundle();
        java.util.Iterator v5 = v3.iterator();
        while (v5.hasNext()) {
            String v2_1 = ((String) v5.next());
            android.os.PersistableBundle v4_0 = p7.get(v2_1);
            if (!(v4_0 instanceof Boolean)) {
                if (!(v4_0 instanceof Integer)) {
                    if (!(v4_0 instanceof String)) {
                        if (!(v4_0 instanceof String[])) {
                            if ((v4_0 instanceof android.os.PersistableBundle)) {
                                v0_1.putBundle(v2_1, com.afwsamples.testdpc.common.BundleUtil.persistableBundleToBundle(((android.os.PersistableBundle) v4_0)));
                            }
                        } else {
                            v0_1.putStringArray(v2_1, ((String[]) ((String[]) v4_0)));
                        }
                    } else {
                        v0_1.putString(v2_1, ((String) v4_0));
                    }
                } else {
                    v0_1.putInt(v2_1, ((Integer) v4_0).intValue());
                }
            } else {
                v0_1.putBoolean(v2_1, ((Boolean) v4_0).booleanValue());
            }
        }
        return v0_1;
    }
}
