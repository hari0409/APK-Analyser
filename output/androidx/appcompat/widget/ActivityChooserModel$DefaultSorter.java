package androidx.appcompat.widget;
final class ActivityChooserModel$DefaultSorter implements androidx.appcompat.widget.ActivityChooserModel$ActivitySorter {
    private static final float WEIGHT_DECAY_COEFFICIENT = 1064514355;
    private final java.util.Map mPackageNameToActivityMap;

    ActivityChooserModel$DefaultSorter()
    {
        this.mPackageNameToActivityMap = new java.util.HashMap();
        return;
    }

    public void sort(android.content.Intent p11, java.util.List p12, java.util.List p13)
    {
        java.util.Map v3 = this.mPackageNameToActivityMap;
        v3.clear();
        int v1 = p12.size();
        int v5_1 = 0;
        while (v5_1 < v1) {
            androidx.appcompat.widget.ActivityChooserModel$ActivityResolveInfo v0_3 = ((androidx.appcompat.widget.ActivityChooserModel$ActivityResolveInfo) p12.get(v5_1));
            v0_3.weight = 0;
            v3.put(new android.content.ComponentName(v0_3.resolveInfo.activityInfo.packageName, v0_3.resolveInfo.activityInfo.name), v0_3);
            v5_1++;
        }
        float v7 = 1065353216;
        int v5_0 = (p13.size() - 1);
        while (v5_0 >= 0) {
            androidx.appcompat.widget.ActivityChooserModel$HistoricalRecord v4_1 = ((androidx.appcompat.widget.ActivityChooserModel$HistoricalRecord) p13.get(v5_0));
            androidx.appcompat.widget.ActivityChooserModel$ActivityResolveInfo v0_1 = ((androidx.appcompat.widget.ActivityChooserModel$ActivityResolveInfo) v3.get(v4_1.activity));
            if (v0_1 != null) {
                v0_1.weight = (v0_1.weight + (v4_1.weight * v7));
                v7 *= 1064514355;
            }
            v5_0--;
        }
        java.util.Collections.sort(p12);
        return;
    }
}
