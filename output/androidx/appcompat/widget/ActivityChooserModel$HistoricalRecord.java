package androidx.appcompat.widget;
public final class ActivityChooserModel$HistoricalRecord {
    public final android.content.ComponentName activity;
    public final long time;
    public final float weight;

    public ActivityChooserModel$HistoricalRecord(android.content.ComponentName p1, long p2, float p4)
    {
        this.activity = p1;
        this.time = p2;
        this.weight = p4;
        return;
    }

    public ActivityChooserModel$HistoricalRecord(String p3, long p4, float p6)
    {
        this(android.content.ComponentName.unflattenFromString(p3), p4, p6);
        return;
    }

    public boolean equals(Object p9)
    {
        int v1 = 1;
        if (this != p9) {
            if (p9 != null) {
                if (this.getClass() == p9.getClass()) {
                    if (this.activity != null) {
                        if (!this.activity.equals(((androidx.appcompat.widget.ActivityChooserModel$HistoricalRecord) p9).activity)) {
                            v1 = 0;
                            return v1;
                        }
                    } else {
                        if (((androidx.appcompat.widget.ActivityChooserModel$HistoricalRecord) p9).activity != null) {
                            v1 = 0;
                            return v1;
                        }
                    }
                    if (this.time == ((androidx.appcompat.widget.ActivityChooserModel$HistoricalRecord) p9).time) {
                        if (Float.floatToIntBits(this.weight) != Float.floatToIntBits(((androidx.appcompat.widget.ActivityChooserModel$HistoricalRecord) p9).weight)) {
                            v1 = 0;
                        }
                    } else {
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
        int v2_3;
        int v1 = 1;
        if (this.activity != null) {
            v2_3 = this.activity.hashCode();
        } else {
            v2_3 = 0;
        }
        return (((((v2_3 + 31) * 31) + ((int) (this.time ^ (this.time >> 32)))) * 31) + Float.floatToIntBits(this.weight));
    }

    public String toString()
    {
        StringBuilder v0_1 = new StringBuilder();
        v0_1.append("[");
        v0_1.append("; activity:").append(this.activity);
        v0_1.append("; time:").append(this.time);
        v0_1.append("; weight:").append(new java.math.BigDecimal(((double) this.weight)));
        v0_1.append("]");
        return v0_1.toString();
    }
}
