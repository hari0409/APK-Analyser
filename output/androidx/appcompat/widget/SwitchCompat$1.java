package androidx.appcompat.widget;
final class SwitchCompat$1 extends android.util.Property {

    SwitchCompat$1(Class p1, String p2)
    {
        super(p1, p2);
        return;
    }

    public Float get(androidx.appcompat.widget.SwitchCompat p2)
    {
        return Float.valueOf(p2.mThumbPosition);
    }

    public bridge synthetic Object get(Object p2)
    {
        return this.get(((androidx.appcompat.widget.SwitchCompat) p2));
    }

    public void set(androidx.appcompat.widget.SwitchCompat p2, Float p3)
    {
        p2.setThumbPosition(p3.floatValue());
        return;
    }

    public bridge synthetic void set(Object p1, Object p2)
    {
        this.set(((androidx.appcompat.widget.SwitchCompat) p1), ((Float) p2));
        return;
    }
}
