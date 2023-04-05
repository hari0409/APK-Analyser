package androidx.appcompat.widget;
public final class ActivityChooserModel$ActivityResolveInfo implements java.lang.Comparable {
    public final android.content.pm.ResolveInfo resolveInfo;
    public float weight;

    public ActivityChooserModel$ActivityResolveInfo(android.content.pm.ResolveInfo p1)
    {
        this.resolveInfo = p1;
        return;
    }

    public int compareTo(androidx.appcompat.widget.ActivityChooserModel$ActivityResolveInfo p3)
    {
        return (Float.floatToIntBits(p3.weight) - Float.floatToIntBits(this.weight));
    }

    public bridge synthetic int compareTo(Object p2)
    {
        return this.compareTo(((androidx.appcompat.widget.ActivityChooserModel$ActivityResolveInfo) p2));
    }

    public boolean equals(Object p6)
    {
        int v1 = 1;
        if (this != p6) {
            if (p6 != null) {
                if (this.getClass() == p6.getClass()) {
                    if (Float.floatToIntBits(this.weight) != Float.floatToIntBits(((androidx.appcompat.widget.ActivityChooserModel$ActivityResolveInfo) p6).weight)) {
                        v1 = 0;
                    }
                } else {
                    v1 = 0;
                }
            } else {
                v1 = 0;
            }
        }
        return v1;
    }

    public int hashCode()
    {
        return (Float.floatToIntBits(this.weight) + 31);
    }

    public String toString()
    {
        StringBuilder v0_1 = new StringBuilder();
        v0_1.append("[");
        v0_1.append("resolveInfo:").append(this.resolveInfo.toString());
        v0_1.append("; weight:").append(new java.math.BigDecimal(((double) this.weight)));
        v0_1.append("]");
        return v0_1.toString();
    }
}
