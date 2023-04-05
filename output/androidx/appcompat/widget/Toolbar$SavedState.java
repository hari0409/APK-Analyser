package androidx.appcompat.widget;
public class Toolbar$SavedState extends androidx.customview.view.AbsSavedState {
    public static final android.os.Parcelable$Creator CREATOR;
    int expandedMenuItemId;
    boolean isOverflowOpen;

    static Toolbar$SavedState()
    {
        androidx.appcompat.widget.Toolbar$SavedState.CREATOR = new androidx.appcompat.widget.Toolbar$SavedState$1();
        return;
    }

    public Toolbar$SavedState(android.os.Parcel p2)
    {
        this(p2, 0);
        return;
    }

    public Toolbar$SavedState(android.os.Parcel p2, ClassLoader p3)
    {
        int v0_2;
        super(p2, p3);
        super.expandedMenuItemId = p2.readInt();
        if (p2.readInt() == 0) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        super.isOverflowOpen = v0_2;
        return;
    }

    public Toolbar$SavedState(android.os.Parcelable p1)
    {
        super(p1);
        return;
    }

    public void writeToParcel(android.os.Parcel p2, int p3)
    {
        int v0_2;
        super.writeToParcel(p2, p3);
        p2.writeInt(this.expandedMenuItemId);
        if (!this.isOverflowOpen) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        p2.writeInt(v0_2);
        return;
    }
}
